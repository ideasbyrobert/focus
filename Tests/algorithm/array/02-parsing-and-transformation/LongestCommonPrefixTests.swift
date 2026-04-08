import XCTest
@testable import AlgorithmArray

final class LongestCommonPrefixTests: XCTestCase
{
    func testFindsCanonicalPrefix()
    {
        XCTAssertEqual(LongestCommonPrefix.solve(["flower", "flow", "flight"]), "fl")
    }

    func testReturnsEmptyStringWhenThereIsNoSharedPrefix()
    {
        XCTAssertEqual(LongestCommonPrefix.solve(["dog", "racecar", "car"]), "")
    }

    func testReturnsEmptyStringForEmptyInput()
    {
        XCTAssertEqual(LongestCommonPrefix.solve([]), "")
    }

    func testReturnsSingleWordWhenOnlyOneWordIsProvided()
    {
        XCTAssertEqual(LongestCommonPrefix.solve(["swift"]), "swift")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            LongestCommonPrefix.solve(["interview", "internet", "internal", "interval", "into"]),
            "int"
        )
    }
}
