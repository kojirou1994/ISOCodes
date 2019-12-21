import Foundation

// original: http://www.loc.gov/standards/iso639-2/ascii_8bits.html
// These files may be used to download the list of language codes with their language names, for example into a database. To read the files, please note that one line of text contains one entry. An alpha-3 (bibliographic) code, an alpha-3 (terminologic) code (when given), an alpha-2 code (when given), an English name, and a French name of a language are all separated by pipe (|) characters. If one of these elements is not applicable to the entry, the field is left empty, i.e., a pipe (|) character immediately follows the preceding entry. The Line terminator is the LF character.

// example: chi|zho|zh|Chinese|chinois

struct LanguageCode {
    let englishName: String
    let frenchName: String
    let alpha3Bibliographic: String
    let alpha3Terminologic: String?
    let alpha2: String?
}

let source = "http://www.loc.gov/standards/iso639-2/ISO-639-2_utf-8.txt"
let url = URL(string: source)!

func generateCode(langs: [LanguageCode]) {
    print("""
    public enum LanguageCode: String, CaseIterable {
    \(langs.map { "    case \($0.englishName)" }.joined(separator: "\n"))
        
        public init?(iso639_2: String) {
            switch iso639_2 {
    \(langs.map{ "        case \"\($0.alpha3Bibliographic)\":\(String(repeating: " ", count: 20-$0.alpha3Bibliographic.count))self = .\($0.englishName)" }.joined(separator: "\n"))
            default: return nil
            }
        }
        
        public var iso639_2: String {
            switch self {
    \(langs.map { "        case .\($0.englishName):\(String(repeating: " ", count: 20-$0.englishName.count)) return \"\($0.alpha3Bibliographic)\"" }.joined(separator: "\n"))
            }
        }
        
        public var iso639_1: String? {
            switch self {
    \(langs.map { "        case .\($0.englishName):\(String(repeating: " ", count: 20-$0.englishName.count)) return \($0.alpha2 == nil ? "nil" : "\"" + $0.alpha2! + "\"")" }.joined(separator: "\n"))
            }
        }
    }
    """)
}

let invalidCharacters = [Character](arrayLiteral: " ", "(", ")", "-", "'")

URLSession(configuration: .ephemeral).dataTask(with: url) { (data, response, error) in
    guard error == nil else {
        fatalError()
    }
    guard (200..<300).contains((response as! HTTPURLResponse).statusCode) else {
        fatalError()
    }
    let lines = String(decoding: data!, as: UTF8.self).components(separatedBy: .newlines)
    
    let langs = lines.compactMap { (line) -> LanguageCode? in
        let parts = line.components(separatedBy: "|").map { (part) -> String? in
            return part.isEmpty ? nil : part
        }
        let lang =  LanguageCode(englishName: parts[3]!, frenchName: parts[4]!, alpha3Bibliographic: parts[0]!, alpha3Terminologic: parts[1], alpha2: parts[2])
        if lang.englishName.contains(where: { invalidCharacters.contains($0) }) {
            return nil
        }
        return lang
    }
    
    generateCode(langs: langs)
    exit(0)
}.resume()

RunLoop.main.run()
