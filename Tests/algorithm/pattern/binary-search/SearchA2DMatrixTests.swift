import XCTest
@testable import AlgorithmBinarySearch

final class SearchA2DMatrixTests: XCTestCase
{
    func testHandlesCanonicalHit()
    {
        let matrix = [
            [1, 3, 5, 7],
            [10, 11, 16, 20],
            [23, 30, 34, 60],
        ]

        XCTAssertTrue(SearchA2DMatrix.solve(matrix, target: 3))
    }

    func testHandlesCanonicalMiss()
    {
        let matrix = [
            [1, 3, 5, 7],
            [10, 11, 16, 20],
            [23, 30, 34, 60],
        ]

        XCTAssertFalse(SearchA2DMatrix.solve(matrix, target: 13))
    }

    func testHandlesEmptyMatrix()
    {
        XCTAssertFalse(SearchA2DMatrix.solve([], target: 1))
    }

    func testHandlesLongDebugFriendlyMatrix()
    {
        let matrix = [
            [1, 4, 7, 10, 13],
            [16, 19, 22, 25, 28],
            [31, 34, 37, 40, 43],
            [46, 49, 52, 55, 58],
        ]

        XCTAssertTrue(SearchA2DMatrix.solve(matrix, target: 52))
    }
}
