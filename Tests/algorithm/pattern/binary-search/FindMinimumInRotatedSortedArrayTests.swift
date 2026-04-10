import XCTest
@testable import AlgorithmBinarySearch

final class FindMinimumInRotatedSortedArrayTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.solve([3, 4, 5, 1, 2]), 1)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.solve([4, 5, 6, 7, 0, 1, 2]), 0)
    }

    func testHandlesAlreadySortedInput()
    {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.solve([11, 13, 15, 17]), 11)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.solve([21, 24, 27, 31, 36, 40, 2, 5, 8, 11, 15, 18]), 2)
    }
}
