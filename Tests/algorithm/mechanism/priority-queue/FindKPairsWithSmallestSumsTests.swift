import XCTest
@testable import AlgorithmPriorityQueue

final class FindKPairsWithSmallestSumsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            FindKPairsWithSmallestSums.solve([1, 7, 11], [2, 4, 6], pairCount: 3),
            [[1, 2], [1, 4], [1, 6]]
        )
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(
            FindKPairsWithSmallestSums.solve([1, 1, 2], [1, 2, 3], pairCount: 2),
            [[1, 1], [1, 1]]
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            FindKPairsWithSmallestSums.solve([1, 2, 4, 5], [1, 3, 5, 7], pairCount: 7),
            [[1, 1], [2, 1], [1, 3], [2, 3], [4, 1], [1, 5], [5, 1]]
        )
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(FindKPairsWithSmallestSums.solve([], [1, 2], pairCount: 3), [])
    }
}
