import XCTest
@testable import AlgorithmGraph

final class NearestExitFromEntranceInMazeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let maze: [[Character]] = [
            Array("++.+"),
            Array("...+"),
            Array("+++."),
        ]

        XCTAssertEqual(NearestExitFromEntranceInMaze.solve(maze, [1, 2]), 1)
    }

    func testReturnsNegativeOneWhenNoExitExists()
    {
        let maze: [[Character]] = [
            Array("+++"),
            Array("+.+"),
            Array("+++"),
        ]

        XCTAssertEqual(NearestExitFromEntranceInMaze.solve(maze, [1, 1]), -1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let maze: [[Character]] = [
            Array("+++++++"),
            Array("+.....+"),
            Array("+.+++.+"),
            Array("+.....+"),
            Array("+++.+++"),
        ]

        XCTAssertEqual(NearestExitFromEntranceInMaze.solve(maze, [1, 1]), 5)
    }
}
