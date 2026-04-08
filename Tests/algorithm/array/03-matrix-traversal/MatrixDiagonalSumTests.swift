import XCTest
@testable import AlgorithmArray

final class MatrixDiagonalSumTests: XCTestCase
{
    func testCalculatesCanonicalOddSizedMatrix()
    {
        XCTAssertEqual(
            MatrixDiagonalSum.solve(
                [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9],
                ]
            ),
            25
        )
    }

    func testCalculatesEvenSizedMatrix()
    {
        XCTAssertEqual(
            MatrixDiagonalSum.solve(
                [
                    [1, 2],
                    [3, 4],
                ]
            ),
            10
        )
    }

    func testHandlesSingleCellMatrix()
    {
        XCTAssertEqual(MatrixDiagonalSum.solve([[5]]), 5)
    }

    func testHandlesEmptyMatrix()
    {
        XCTAssertEqual(MatrixDiagonalSum.solve([]), 0)
    }

    func testHandlesLongDebugFriendlyMatrix()
    {
        XCTAssertEqual(
            MatrixDiagonalSum.solve(
                [
                    [1, 2, 3, 4, 5],
                    [6, 7, 8, 9, 10],
                    [11, 12, 13, 14, 15],
                    [16, 17, 18, 19, 20],
                    [21, 22, 23, 24, 25],
                ]
            ),
            117
        )
    }
}
