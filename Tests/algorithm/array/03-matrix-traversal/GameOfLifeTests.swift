import XCTest
@testable import AlgorithmArray

final class GameOfLifeTests: XCTestCase
{
    func testTransformsCanonicalInput()
    {
        assertNextGeneration(
            input: [
                [0, 1, 0],
                [0, 0, 1],
                [1, 1, 1],
                [0, 0, 0],
            ],
            expected: [
                [0, 0, 0],
                [1, 0, 1],
                [0, 1, 1],
                [0, 1, 0],
            ]
        )
    }

    func testPreservesStillLifeBlock()
    {
        assertNextGeneration(
            input: [
                [1, 1],
                [1, 1],
            ],
            expected: [
                [1, 1],
                [1, 1],
            ]
        )
    }

    func testOscillatorFlipsOrientation()
    {
        assertNextGeneration(
            input: [
                [0, 1, 0],
                [0, 1, 0],
                [0, 1, 0],
            ],
            expected: [
                [0, 0, 0],
                [1, 1, 1],
                [0, 0, 0],
            ]
        )
    }

    func testSingleLiveCellDies()
    {
        assertNextGeneration(input: [[1]], expected: [[0]])
    }

    func testHandlesLongDebugFriendlyBoard()
    {
        assertNextGeneration(
            input: [
                [0, 1, 0, 0, 0],
                [0, 0, 1, 0, 0],
                [1, 1, 1, 0, 0],
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
            ],
            expected: [
                [0, 0, 0, 0, 0],
                [1, 0, 1, 0, 0],
                [0, 1, 1, 0, 0],
                [0, 1, 0, 0, 0],
                [0, 0, 0, 0, 0],
            ]
        )
    }

    private func assertNextGeneration(input: [[Int]], expected: [[Int]])
    {
        var board = input
        GameOfLife.solve(&board)
        XCTAssertEqual(board, expected)
    }
}
