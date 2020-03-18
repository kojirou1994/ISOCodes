import Dispatch
import Foundation
import Kanna

struct CountryData: Comparable {
    static func < (lhs: CountryData, rhs: CountryData) -> Bool {
        lhs.alpha3 < rhs.alpha3
    }

    let name: String
    let alpha2: String
    let alpha3: String
    let code: String

    var caseString: String {
        alpha3.lowercased()
    }
}

struct CurrencyCountryData: Hashable, Comparable {
    let country: String
    let currency: String
    let code: String
    let number: String

    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.code < rhs.code
    }

    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.code == rhs.code
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(code)
    }

    var caseString: String {
        code.uppercased()
    }
}

struct LanguageData: Comparable {
    let alpha3Bibliographic: String
    let alpha3Terminologic: String?
    let alpha2Code: String?
    let englishName: String
    let frenchName: String

    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.alpha3Bibliographic < rhs.alpha3Bibliographic
    }

    var caseString: String {
        alpha3Bibliographic.lowercased().replacingOccurrences(of: "-", with: "_")
    }

    var needExplictRawValue: Bool {
        caseString != alpha3Bibliographic
    }
}

func generateCountryCode() {
    workingGroup.enter()
    session.dataTask(with: countryDataURL) { data, _, _ in
        let data = data!
        let doc = try! HTML(html: data, encoding: .utf8)
        let countries = doc.xpath("//tbody/tr").map { row -> CountryData in
            let columns = row.xpath("td").map { $0.text!.trimmingCharacters(in: .whitespacesAndNewlines) }
            precondition(columns.count == 4)
            precondition(UInt16(columns[3]) != nil, "code \(columns[3]) is not a number")
            return CountryData(name: columns[0], alpha2: columns[1],
                               alpha3: columns[2], code: columns[3])
        }.sorted()
        generateCode(countries)
        generateCurrencyCode(countries: countries)
        generateLanguageCode()
        workingGroup.leave()
    }.resume()
}

func generateCurrencyCode(countries: [CountryData]) {
    workingGroup.enter()
    session.dataTask(with: currencyDataURL) { data, _, _ in
        let data = data!
        let doc = try! HTML(html: data, encoding: .utf8)
        let currencies = doc.xpath("//tbody/tr").compactMap { row -> CurrencyCountryData? in
            let columns = row.xpath("td").map { $0.text!.trimmingCharacters(in: .whitespacesAndNewlines) }
            precondition(columns.count == 4)
            if columns[2].isEmpty || columns[3].isEmpty {
                print("No currency: \(columns)")
                return nil
            }
            precondition(UInt16(columns[3]) != nil, "code \(columns[3]) is not a number")
            return CurrencyCountryData(country: columns[0], currency: columns[1],
                                       code: columns[2], number: columns[3])
        }
        let currencySet = Set(currencies).sorted()
        generateCode(currencySet)
//        generateCountryExtension(country: countries, currency: currencies)
        workingGroup.leave()
    }.resume()
}

func generateLanguageCode() {
    workingGroup.enter()
    let invalidCharacters = [Character](arrayLiteral: " ", "(", ")", "-", "'")

    session.dataTask(with: languageDataURL) { data, _, _ in
        let lines = String(decoding: data!, as: UTF8.self).components(separatedBy: .newlines)
        let languages = lines.compactMap { (line) -> LanguageData? in
            let parts = line.components(separatedBy: "|").map { (part) -> String? in
                return part.isEmpty ? nil : part
            }
            let lang =  LanguageData(alpha3Bibliographic: parts[0]!,
                                     alpha3Terminologic: parts[1],
                                     alpha2Code: parts[2], englishName: parts[3]!,
                                     frenchName: parts[4]!)

//            if lang.englishName.contains(where: { invalidCharacters.contains($0) }) {
//                return nil
//            }
            return lang
        }

        generateCode(languages)

        workingGroup.leave()
    }.resume()
}

private func generateCode(_ data: [CountryData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Country.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Country: UInt16, Identifiable, CaseIterable, Codable {

        \(data.map { "case \($0.caseString) = \($0.code)" }.joined(separator: "\n"))

        public var id: Self {self}
        public var numericCode: UInt16 { rawValue }

    public init?(alpha2Code: String) {
    guard alpha2Code.utf8.count == 2 else {
    return nil
    }
    switch alpha2Code.lowercased() {
    \(data.map { "case \"\($0.alpha2.lowercased())\": self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }

    public init?(alpha3Code: String) {
    guard alpha3Code.utf8.count == 3 else {
    return nil
    }
    switch alpha3Code.lowercased() {
    \(data.map { "case \"\($0.alpha3.lowercased())\": self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }

        public var name: String {
        switch self {
    \(data.map { "case .\($0.caseString): return \"\($0.name)\"" }.joined(separator: "\n"))
        }
        }

        public var alpha2Code: String {
        switch self {
        \(data.map { "case .\($0.caseString): return \"\($0.alpha2)\"" }.joined(separator: "\n"))
        }
        }

        public var alpha3Code: String {
        switch self {
        \(data.map { "case .\($0.caseString): return \"\($0.alpha3)\"" }.joined(separator: "\n"))
        }
        }
    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}

private func generateCode(_ data: [CurrencyCountryData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Currency.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Currency: UInt16, Identifiable, CaseIterable, Codable {

    \(data.map { "case \($0.caseString) = \($0.number)" }.joined(separator: "\n"))

    public init?(code: String) {
    guard code.utf8.count == 3 else {
    return nil
    }
    switch code.uppercased() {
    \(data.map { "case \"\($0.code.uppercased())\": self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }

    public var id: Self {self}
    public var numericCode: UInt16 { rawValue }

    public var name: String {
    switch self {
    \(data.map { "case .\($0.caseString): return \"\($0.currency)\"" }.joined(separator: "\n"))
    }
    }

    public var code: String {
    switch self {
    \(data.map { "case .\($0.caseString): return \"\($0.code)\"" }.joined(separator: "\n"))
    }
    }

    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}


private func generateCode(_ languages: [LanguageData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Language.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Language: String, Identifiable, CaseIterable, Codable {

    \(languages.map { "case \($0.caseString)" + ($0.needExplictRawValue ? " = \"\($0.alpha3Bibliographic)\"" : "") }.joined(separator: "\n"))

    public init?(alpha2Code: String) {
    guard alpha2Code.utf8.count == 2 else {
    return nil
    }
    switch alpha2Code.lowercased() {
    \(languages.filter{$0.alpha2Code != nil}.map{ "case \"\($0.alpha2Code!)\": self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }

    public init?(alpha3Code: String) {
    guard alpha3Code.utf8.count == 3 else {
    return nil
    }
    switch alpha3Code.lowercased() {
    \(languages.map{ "case \([$0.alpha3Bibliographic, $0.alpha3Terminologic].compactMap{$0}.map{"\"\($0)\""}.joined(separator: ", ")): self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }

    public var id: Self {self}

    public var name: String {
    switch self {
    \(languages.map { "case .\($0.caseString): return \"\($0.englishName)\"" }.joined(separator: "\n"))
    }
    }

    public var alpha2Code: String? {
    switch self {
    \(languages.filter{$0.alpha2Code != nil}.map { "case .\($0.caseString): return \"\($0.alpha2Code!)\"" }.joined(separator: "\n"))
    default: return nil
    }
    }

    public var alpha3BibliographicCode: String {
    rawValue
    }

    public var alpha3TerminologicCode: String {
    switch self {
    \(languages.filter{$0.alpha3Terminologic != nil}.map { "case .\($0.caseString): return \"\($0.alpha3Terminologic!)\"" }.joined(separator: "\n"))
    default: return alpha3BibliographicCode
    }
    }

    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}
/*
private func generateCountryExtension(country: [CountryData], currency: [CurrencyCountryData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Country+Currency.swift")

    print("Writing to \(outputURL.path)")
    var map = [String: String]()
    for c in currency {
        let co = country.first(where: {$0.name.lowercased() == c.country.lowercased()})!
    }

    let code = """
    public extension Country {
    var currency: Currency? {
        .cny
    }
    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}
*/
