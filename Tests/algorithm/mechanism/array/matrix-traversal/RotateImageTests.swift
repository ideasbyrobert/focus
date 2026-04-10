import XCTest
@testable import AlgorithmArray

final class RotateImageTests: XCTestCase
{
    func testRotatesCanonicalThreeByThreeMatrix()
    {
        assertRotation(
            input: [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
            ],
            expected: [
                [7, 4, 1],
                [8, 5, 2],
                [9, 6, 3],
            ]
        )
    }

    func testRotatesCanonicalFourByFourMatrix()
    {
        assertRotation(
            input: [
                [5, 1, 9, 11],
                [2, 4, 8, 10],
                [13, 3, 6, 7],
                [15, 14, 12, 16],
            ],
            expected: [
                [15, 13, 2, 5],
                [14, 3, 4, 1],
                [12, 6, 8, 9],
                [16, 7, 10, 11],
            ]
        )
    }

    func testHandlesSingleCellMatrix()
    {
        assertRotation(input: [[1]], expected: [[1]])
    }

    func testHandlesTwoByTwoMatrix()
    {
        assertRotation(
            input: [
                [1, 2],
                [3, 4],
            ],
            expected: [
                [3, 1],
                [4, 2],
            ]
        )
    }

    func testHandlesLongDebugFriendlyMatrix()
    {
        assertRotation(
            input: [
                [1, 2, 3, 4, 5],
                [6, 7, 8, 9, 10],
                [11, 12, 13, 14, 15],
                [16, 17, 18, 19, 20],
                [21, 22, 23, 24, 25],
            ],
            expected: [
                [21, 16, 11, 6, 1],
                [22, 17, 12, 7, 2],
                [23, 18, 13, 8, 3],
                [24, 19, 14, 9, 4],
                [25, 20, 15, 10, 5],
            ]
        )
    }

    private func assertRotation(input: [[Int]], expected: [[Int]])
    {
        var matrix = input
        RotateImage.solve(&matrix)
        XCTAssertEqual(matrix, expected)
    }
}
