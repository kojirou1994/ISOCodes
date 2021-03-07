import XCTest
@testable import ISOCodes

final class ISOCodesTests: XCTestCase {

  func testInitFromString() {
    for country in Country.allCases {
      XCTAssertEqual(country, Country(alpha2Code: country.alpha2Code.uppercased()))
      XCTAssertEqual(country, Country(alpha3Code: country.alpha3Code.uppercased()))
      XCTAssertEqual(country, Country(string: country.alpha2Code.uppercased()))
      XCTAssertEqual(country, Country(string: country.alpha3Code.uppercased()))

      XCTAssertEqual(country, Country(alpha2Code: country.alpha2Code.lowercased()))
      XCTAssertEqual(country, Country(alpha3Code: country.alpha3Code.lowercased()))
      XCTAssertEqual(country, Country(string: country.alpha2Code.lowercased()))
      XCTAssertEqual(country, Country(string: country.alpha3Code.lowercased()))
    }

    for language in Language.allCases {
      if let alpha2Code = language.alpha2Code {
        XCTAssertEqual(language, Language(alpha2Code: alpha2Code.uppercased()))
        XCTAssertEqual(language, Language(string: alpha2Code.uppercased()))

        XCTAssertEqual(language, Language(alpha2Code: alpha2Code.lowercased()))
        XCTAssertEqual(language, Language(string: alpha2Code.lowercased()))
      }

      XCTAssertEqual(language, Language(alpha3Code: language.alpha3BibliographicCode.uppercased()))
      XCTAssertEqual(language, Language(alpha3Code: language.alpha3TerminologicCode.uppercased()))
      XCTAssertEqual(language, Language(string: language.alpha3BibliographicCode.uppercased()))
      XCTAssertEqual(language, Language(string: language.alpha3TerminologicCode.uppercased()))

      XCTAssertEqual(language, Language(alpha3Code: language.alpha3BibliographicCode.lowercased()))
      XCTAssertEqual(language, Language(alpha3Code: language.alpha3TerminologicCode.lowercased()))
      XCTAssertEqual(language, Language(string: language.alpha3BibliographicCode.lowercased()))
      XCTAssertEqual(language, Language(string: language.alpha3TerminologicCode.lowercased()))
    }

    for currency in Currency.allCases {
      XCTAssertEqual(currency, Currency(code: currency.code.uppercased()))
      XCTAssertEqual(currency, Currency(code: currency.code.lowercased()))
    }
  }

}
