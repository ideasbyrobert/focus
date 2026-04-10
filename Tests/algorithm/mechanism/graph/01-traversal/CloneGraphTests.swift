import XCTest
@testable import AlgorithmGraph

final class CloneGraphTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let graph = buildGraph(
            [
                [2, 4],
                [1, 3],
                [2, 4],
                [1, 3],
            ]
        )

        let clone = CloneGraph.solve(graph)

        XCTAssertEqual(adjacencyList(from: clone), [[2, 4], [1, 3], [2, 4], [1, 3]])
        XCTAssertTrue(isDistinctClone(graph, clone))
    }

    func testHandlesEmptyGraph()
    {
        XCTAssertNil(CloneGraph.solve(nil))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let graph = buildGraph(
            [
                [2, 3],
                [1, 4, 5],
                [1, 5],
                [2, 6],
                [2, 3, 6],
                [4, 5],
            ]
        )

        let clone = CloneGraph.solve(graph)

        XCTAssertEqual(
            adjacencyList(from: clone),
            [
                [2, 3],
                [1, 4, 5],
                [1, 5],
                [2, 6],
                [2, 3, 6],
                [4, 5],
            ]
        )
        XCTAssertTrue(isDistinctClone(graph, clone))
    }
}
