import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringsAreValueTypesTests: XCTestCase
{
    func testCopyingAStringLeavesTheOriginalValueUnchanged()
    {
        let values = stringCopyDemonstratesValueSemantics()

        XCTAssertEqual(values.original, "Swift")
        XCTAssertEqual(values.copy, "Swift String")
    }
}
