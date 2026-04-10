import XCTest
@testable import AlgorithmSortingAndInterval

final class NonOverlappingIntervalsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(NonOverlappingIntervals.solve([[1, 2], [2, 3], [3, 4], [1, 3]]), 1)
    }

    func testHandlesFullyOverlappingIntervals()
    {
        XCTAssertEqual(NonOverlappingIntervals.solve([[1, 2], [1, 2], [1, 2]]), 2)
    }

    func testHandlesAlreadyNonOverlappingIntervals()
    {
        XCTAssertEqual(NonOverlappingIntervals.solve([[1, 2], [2, 3]]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(NonOverlappingIntervals.solve([[1, 4], [2, 3], [3, 5], [6, 8], [7, 9], [10, 12], [11, 13], [14, 16]]), 3)
    }
}
