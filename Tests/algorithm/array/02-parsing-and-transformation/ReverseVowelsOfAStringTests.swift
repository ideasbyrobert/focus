import XCTest
@testable import AlgorithmArray

final class ReverseVowelsOfAStringTests: XCTestCase
{
    func testReversesVowelsForCanonicalInput()
    {
        XCTAssertEqual(ReverseVowelsOfAString.solve("hello"), "holle")
    }

    func testReversesVowelsAcrossLongerWord()
    {
        XCTAssertEqual(ReverseVowelsOfAString.solve("leetcode"), "leotcede")
    }

    func testLeavesStringUnchangedWhenNoVowelsArePresent()
    {
        XCTAssertEqual(ReverseVowelsOfAString.solve("rhythm"), "rhythm")
    }

    func testHandlesUppercaseAndLowercaseVowels()
    {
        XCTAssertEqual(ReverseVowelsOfAString.solve("Aa"), "aA")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            ReverseVowelsOfAString.solve("a1e2i3o4u5A6E7I8O9U"),
            "U1O2I3E4A5u6o7i8e9a"
        )
    }
}
