import XCTest
@testable import AlgorithmBinarySearch

final class SearchInsertPositionTests: XCTestCase
{
    func testHandlesCanonicalHit()
    {
        XCTAssertEqual(SearchInsertPosition.solve([1, 3, 5, 6], target: 5), 2)
    }

    func testHandlesCanonicalInsertionPoint()
    {
        XCTAssertEqual(SearchInsertPosition.solve([1, 3, 5, 6], target: 2), 1)
        XCTAssertEqual(SearchInsertPosition.solve([1, 3, 5, 6], target: 7), 4)
    }

    func testHandlesFrontInsertion()
    {
        XCTAssertEqual(SearchInsertPosition.solve([1, 3, 5, 6], target: 0), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(SearchInsertPosition.solve([2, 5, 8, 11, 15, 18, 21, 24, 27, 31, 36, 40], target: 28), 9)
    }
}
