import XCTest
@testable import AlgorithmSortAndInterval

final class MergeIntervalsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MergeIntervals.solve([[1, 3], [2, 6], [8, 10], [15, 18]]), [[1, 6], [8, 10], [15, 18]])
    }

    func testHandlesTouchingIntervals()
    {
        XCTAssertEqual(MergeIntervals.solve([[1, 4], [4, 5]]), [[1, 5]])
    }

    func testHandlesAlreadySeparatedIntervals()
    {
        XCTAssertEqual(MergeIntervals.solve([[1, 2], [4, 5], [7, 8]]), [[1, 2], [4, 5], [7, 8]])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MergeIntervals.solve([[8, 10], [1, 3], [2, 6], [15, 18], [17, 20], [21, 22], [22, 25], [30, 31], [31, 35]]), [[1, 6], [8, 10], [15, 20], [21, 25], [30, 35]])
    }
}
