import Foundation

let session = URLSession(configuration: .ephemeral)

let countryDataURL = URL(string: "https://www.iban.com/country-codes")!
let currencyDataURL = URL(string: "https://www.iban.com/currency-codes")!
let languageDataURL = URL(string: "http://www.loc.gov/standards/iso639-2/ISO-639-2_utf-8.txt")!

// original: http://www.loc.gov/standards/iso639-2/ascii_8bits.html
// These files may be used to download the list of language codes with their language names, for example into a database. To read the files, please note that one line of text contains one entry. An alpha-3 (bibliographic) code, an alpha-3 (terminologic) code (when given), an alpha-2 code (when given), an English name, and a French name of a language are all separated by pipe (|) characters. If one of these elements is not applicable to the entry, the field is left empty, i.e., a pipe (|) character immediately follows the preceding entry. The Line terminator is the LF character.

// example: chi|zho|zh|Chinese|chinois
