import XCTest
@testable import LanguageCode

final class LanguageCodeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LanguageCode().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
