import Dispatch
import Foundation
import Kanna

struct CountryData: Comparable, CodeGenerateData {
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

struct CurrencyCountryData: Hashable, Comparable, CodeGenerateData {
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
      let str = code.lowercased()
      switch str {
      case "try":
        return "`try`"
      default:
        return str
      }
    }
}

struct LanguageData: Comparable, CodeGenerateData {
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

            if lang.alpha3Bibliographic.count != 3 {
                return nil
            }
//            if lang.englishName.contains(where: { invalidCharacters.contains($0) }) {
//                return nil
//            }
            return lang
        }

        generateCode(languages)

        workingGroup.leave()
    }.resume()
}


// MARK: Country
private func generateCode(_ data: [CountryData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Country.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Country: UInt16, Identifiable, CaseIterable, Codable {

        \(data.map { "case \($0.caseString) = \($0.code)" }.joined(separator: "\n"))

        public var id: Self {self}
        public var numericCode: UInt16 { rawValue }

    \(generateInitFromCode(parameterName: "alpha2Code", charToCodeProperty: .only2, data: data, codes: {[$0.alpha2]}))

    \(generateInitFromCode(parameterName: "alpha3Code", charToCodeProperty: .only3, data: data, codes: {[$0.alpha3]}))

    \(generateInitFromCode(parameterName: "string", charToCodeProperty: .both2and3, data: data, codes: {[$0.alpha2, $0.alpha3]}))

    \(generateVariable(name: "name", data: data, isString: true, isOptional: false, value: {$0.name}))

    \(generateVariable(name: "alpha2Code", data: data, isString: true, isOptional: false, value: {$0.alpha2.lowercased()}))

    \(generateVariable(name: "alpha3Code", data: data, isString: true, isOptional: false, value: {$0.alpha3.lowercased()}))
    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}

// MARK: Currency
private func generateCode(_ data: [CurrencyCountryData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Currency.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Currency: UInt16, Identifiable, CaseIterable, Codable {

    \(data.map { "case \($0.caseString) = \($0.number)" }.joined(separator: "\n"))

    \(generateInitFromCode(parameterName: "code", charToCodeProperty: .only3, data: data, codes: {[$0.code]}))

    public var id: Self {self}
    public var numericCode: UInt16 { rawValue }

    \(generateVariable(name: "name", data: data, isString: true, isOptional: false, value: {$0.currency}))

    \(generateVariable(name: "code", data: data, isString: true, isOptional: false, value: {$0.code.lowercased()}))

    }
    """
    try! code.write(to: outputURL, atomically: true, encoding: .utf8)
    formatFile(at: outputURL)
}

// MARK: Language
private func generateCode(_ languages: [LanguageData]) {
    let outputURL = outputRootDirectory.appendingPathComponent("Language.swift")

    print("Writing to \(outputURL.path)")
    let code = """
    public enum Language: UInt32, Identifiable, CaseIterable, Codable {

    \(languages.map { "case \($0.caseString)" + " = " + convertAlphaCodeToHexString($0.caseString) }.joined(separator: "\n"))

    \(generateInitFromCode(parameterName: "alpha2Code", charToCodeProperty: .only2, data: languages.filter{$0.alpha2Code != nil}, codes: {[$0.alpha2Code!]}))

    \(generateInitFromCode(parameterName: "alpha3Code", charToCodeProperty: .only3, data: languages, codes: {[$0.alpha3Bibliographic, $0.alpha3Terminologic]}))

    \(generateInitFromCode(parameterName: "string", charToCodeProperty: .both2and3, data: languages, codes: {[$0.alpha2Code, $0.alpha3Bibliographic, $0.alpha3Terminologic]}))

    public var id: Self {self}

    \(generateVariable(name: "name", data: languages, isString: true, isOptional: false, value: {$0.englishName}))

    \(generateVariable(name: "alpha2Code", data: languages.filter{$0.alpha2Code != nil}, isString: true, isOptional: true, value: {$0.alpha2Code!}))

    \(generateVariable(name: "alpha3BibliographicCode", data: languages, isString: true, isOptional: false, value: {$0.alpha3Bibliographic}))

    \(generateVariable(name: "alpha3TerminologicCode", data: languages, isString: true, isOptional: false, value: {$0.alpha3Terminologic ?? $0.alpha3Bibliographic}))

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

private func generateCase<T: CodeGenerateData>(data: T, lowercased: Bool, codes: (T) -> [String?]) -> String {
    codes(data)
        .compactMap{$0}
        .map { lowercased ? $0.lowercased() : $0.uppercased()}
        .map{convertAlphaCodeToHexString($0)}
        .joined(separator: ", ")
}

enum CharToIntCodeProperty: String {
  case only2 = "twoCharToUInt16"
  case only3 = "threeCharToUInt32"
  case both2and3 = "twoOrThreeCharToUInt32"
}

private func generateInitFromCode<C>(parameterName: String, charToCodeProperty: CharToIntCodeProperty, data: C, codes: (C.Element) -> [String?]) -> String where C: Collection, C.Element: CodeGenerateData {

    let charToCodeProperty = charToCodeProperty.rawValue
    return """
    public init?(\(parameterName): String) {
    guard let asciiUIntCode = \(parameterName).\(charToCodeProperty) else {
    return nil
    }
    switch asciiUIntCode {
    \(data.map { "case \(generateCase(data: $0, lowercased: true, codes: codes)): self = .\($0.caseString)" }.joined(separator: "\n"))
    default: return nil
    }
    }
    """
}

private func generateVariable<C, T>(name: String, data: C, isString: Bool, isOptional: Bool, value: (C.Element) -> T) -> String
    where C: Collection, C.Element: CodeGenerateData {
    """
public var \(name): \(String(describing: T.self))\(isOptional ? "?" : "") {
switch self {
\(data.map { "case .\($0.caseString): return \(isString ? "\"\(value($0))\"" : "\(value($0))")" }.joined(separator: "\n"))
\(isOptional ? "default: return nil" : "")
}
}
"""
}
