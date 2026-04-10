import XCTest
@testable import AlgorithmHashMap

final class FindTheDifferenceOfTwoArraysTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let result = FindTheDifferenceOfTwoArrays.solve([1, 2, 3], [2, 4, 6])

        XCTAssertEqual(normalize(result), [[1, 3], [4, 6]])
    }

    func testRemovesDuplicatesWithinEachSide()
    {
        let result = FindTheDifferenceOfTwoArrays.solve([1, 2, 2, 3, 3], [2, 2, 4])

        XCTAssertEqual(normalize(result), [[1, 3], [4]])
    }

    func testHandlesEmptyInput()
    {
        let result = FindTheDifferenceOfTwoArrays.solve([], [1, 2, 2])

        XCTAssertEqual(normalize(result), [[], [1, 2]])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = FindTheDifferenceOfTwoArrays.solve([1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 4, 6, 8, 10, 12, 14])

        XCTAssertEqual(normalize(result), [[1, 3, 5, 7, 9], [10, 12, 14]])
    }

    private func normalize(_ result: [[Int]]) -> [[Int]]
    {
        result.map
        {
            $0.sorted()
        }
    }
}
