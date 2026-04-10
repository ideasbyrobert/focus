import XCTest
@testable import AlgorithmBinarySearch

final class MedianOfTwoSortedArraysTests: XCTestCase
{
    func testHandlesCanonicalOddTotalCount()
    {
        XCTAssertEqual(MedianOfTwoSortedArrays.solve([1, 3], [2]), 2, accuracy: 0.000000000001)
    }

    func testHandlesCanonicalEvenTotalCount()
    {
        XCTAssertEqual(MedianOfTwoSortedArrays.solve([1, 2], [3, 4]), 2.5, accuracy: 0.000000000001)
    }

    func testHandlesOneEmptyArray()
    {
        XCTAssertEqual(MedianOfTwoSortedArrays.solve([], [1]), 1, accuracy: 0.000000000001)
    }

    func testHandlesLongDebugFriendlyArrays()
    {
        XCTAssertEqual(
            MedianOfTwoSortedArrays.solve([1, 4, 7, 10, 13, 16, 19], [2, 3, 5, 6, 8, 9, 11, 12, 14, 15, 17, 18]),
            10,
            accuracy: 0.000000000001
        )
    }
}
