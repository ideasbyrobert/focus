import XCTest
@testable import CodeGuideStringsAndCharacters

final class SubstringsTests: XCTestCase
{
    func testSubstringCanBeTakenBeforeTheComma()
    {
        let beginning = beginningSubstring()

        XCTAssertEqual(String(beginning), "Hello")
        XCTAssertEqual(String(describing: type(of: beginning)), "Substring")
    }

    func testSubstringCanBeConvertedToAStringForLongTermStorage()
    {
        let newString = longTermStringFromBeginningSubstring()

        XCTAssertEqual(newString, "Hello")
        XCTAssertEqual(String(describing: type(of: newString)), "String")
    }
}
