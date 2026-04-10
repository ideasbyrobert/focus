import XCTest
@testable import AlgorithmGraph

final class EvaluateDivisionTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let equations = [["a", "b"], ["b", "c"]]
        let values = [2.0, 3.0]
        let queries = [["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"]]

        assertEqualDoubles(
            EvaluateDivision.solve(equations, values, queries),
            [6.0, 0.5, -1.0, 1.0, -1.0]
        )
    }

    func testHandlesDisconnectedComponents()
    {
        let equations = [["a", "b"], ["c", "d"]]
        let values = [2.0, 4.0]
        let queries = [["a", "d"], ["c", "d"], ["d", "c"]]

        assertEqualDoubles(
            EvaluateDivision.solve(equations, values, queries),
            [-1.0, 4.0, 0.25]
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let equations = [["a", "b"], ["b", "c"], ["c", "d"], ["d", "e"], ["e", "f"]]
        let values = [2.0, 3.0, 4.0, 5.0, 6.0]
        let queries = [["a", "f"], ["f", "a"], ["b", "e"], ["c", "c"], ["x", "x"]]

        assertEqualDoubles(
            EvaluateDivision.solve(equations, values, queries),
            [720.0, 1.0 / 720.0, 60.0, 1.0, -1.0]
        )
    }

    private func assertEqualDoubles(_ actual: [Double], _ expected: [Double], accuracy: Double = 0.000001)
    {
        XCTAssertEqual(actual.count, expected.count)

        for index in actual.indices
        {
            XCTAssertEqual(actual[index], expected[index], accuracy: accuracy)
        }
    }
}
