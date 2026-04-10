import XCTest
@testable import AlgorithmSortAndInterval

final class SummaryRangesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SummaryRanges.solve([0, 1, 2, 4, 5, 7]), ["0->2", "4->5", "7"])
    }

    func testHandlesSingleValueRanges()
    {
        XCTAssertEqual(SummaryRanges.solve([0, 2, 3, 4, 6, 8, 9]), ["0", "2->4", "6", "8->9"])
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(SummaryRanges.solve([]), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(SummaryRanges.solve([1, 2, 3, 5, 7, 8, 9, 11, 12, 15, 16, 17, 18]), ["1->3", "5", "7->9", "11->12", "15->18"])
    }
}
