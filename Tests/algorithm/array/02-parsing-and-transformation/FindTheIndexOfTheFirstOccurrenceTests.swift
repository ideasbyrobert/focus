import XCTest
@testable import AlgorithmArray

final class FindTheIndexOfTheFirstOccurrenceTests: XCTestCase
{
    func testFindsCanonicalMatch()
    {
        XCTAssertEqual(
            FindTheIndexOfTheFirstOccurrence.solve(in: "sadbutsad", finding: "sad"),
            0
        )
    }

    func testReturnsNegativeOneWhenNeedleIsMissing()
    {
        XCTAssertEqual(
            FindTheIndexOfTheFirstOccurrence.solve(in: "leetcode", finding: "leeto"),
            -1
        )
    }

    func testReturnsZeroForEmptyNeedle()
    {
        XCTAssertEqual(
            FindTheIndexOfTheFirstOccurrence.solve(in: "anything", finding: ""),
            0
        )
    }

    func testFindsLaterRepeatedMatch()
    {
        XCTAssertEqual(
            FindTheIndexOfTheFirstOccurrence.solve(in: "mississippi", finding: "issip"),
            4
        )
    }

    func testHandlesLongDebugFriendlyHaystack()
    {
        XCTAssertEqual(
            FindTheIndexOfTheFirstOccurrence.solve(in: "0123456789abcdefghij", finding: "6789a"),
            6
        )
    }
}
