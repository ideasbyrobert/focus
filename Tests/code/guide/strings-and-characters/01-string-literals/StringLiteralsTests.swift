import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringLiteralsTests: XCTestCase
{
    func testStringLiteralStoresTheExpectedValue()
    {
        XCTAssertEqual(someStringLiteral(), "Some string literal value")
    }
}
