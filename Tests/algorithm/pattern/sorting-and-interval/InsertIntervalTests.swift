import XCTest
@testable import AlgorithmSortingAndInterval

final class InsertIntervalTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(InsertInterval.solve([[1, 3], [6, 9]], [2, 5]), [[1, 5], [6, 9]])
    }

    func testHandlesCanonicalMergeAcrossMultipleIntervals()
    {
        XCTAssertEqual(InsertInterval.solve([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]), [[1, 2], [3, 10], [12, 16]])
    }

    func testHandlesInsertionAtTheBeginningAndEnd()
    {
        XCTAssertEqual(InsertInterval.solve([[5, 7], [9, 11]], [1, 3]), [[1, 3], [5, 7], [9, 11]])
        XCTAssertEqual(InsertInterval.solve([[1, 2], [4, 5]], [6, 8]), [[1, 2], [4, 5], [6, 8]])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(InsertInterval.solve([[1, 2], [4, 6], [8, 9], [11, 13], [15, 17], [19, 21]], [5, 18]), [[1, 2], [4, 18], [19, 21]])
    }
}
