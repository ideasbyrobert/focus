import XCTest
@testable import AlgorithmBinarySearch

final class SearchInRotatedSortedArrayTests: XCTestCase
{
    func testHandlesCanonicalHit()
    {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([4, 5, 6, 7, 0, 1, 2], target: 0), 4)
    }

    func testHandlesCanonicalMiss()
    {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([4, 5, 6, 7, 0, 1, 2], target: 3), -1)
    }

    func testHandlesSingleValueInput()
    {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([1], target: 0), -1)
        XCTAssertEqual(SearchInRotatedSortedArray.solve([1], target: 1), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(SearchInRotatedSortedArray.solve([21, 24, 27, 31, 36, 40, 2, 5, 8, 11, 15, 18], target: 11), 9)
    }
}
