import XCTest
@testable import AlgorithmArray

final class SpiralMatrixTests: XCTestCase
{
    func testTraversesCanonicalSquareMatrix()
    {
        XCTAssertEqual(
            SpiralMatrix.solve(
                [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9],
                ]
            ),
            [1, 2, 3, 6, 9, 8, 7, 4, 5]
        )
    }

    func testTraversesCanonicalRectangularMatrix()
    {
        XCTAssertEqual(
            SpiralMatrix.solve(
                [
                    [1, 2, 3, 4],
                    [5, 6, 7, 8],
                    [9, 10, 11, 12],
                ]
            ),
            [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]
        )
    }

    func testHandlesSingleRowMatrix()
    {
        XCTAssertEqual(SpiralMatrix.solve([[1, 2, 3, 4]]), [1, 2, 3, 4])
    }

    func testHandlesSingleColumnMatrix()
    {
        XCTAssertEqual(SpiralMatrix.solve([[1], [2], [3], [4]]), [1, 2, 3, 4])
    }

    func testHandlesLongDebugFriendlyMatrix()
    {
        XCTAssertEqual(
            SpiralMatrix.solve(
                [
                    [1, 2, 3, 4, 5],
                    [6, 7, 8, 9, 10],
                    [11, 12, 13, 14, 15],
                    [16, 17, 18, 19, 20],
                ]
            ),
            [1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12]
        )
    }
}
