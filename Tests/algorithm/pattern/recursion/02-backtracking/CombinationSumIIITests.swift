import XCTest
@testable import AlgorithmBacktracking

final class CombinationSumIIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(normalized(CombinationSumIII.solve(3, 7)), [[1, 2, 4]])
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(
            normalized(CombinationSumIII.solve(3, 9)),
            normalized([[1, 2, 6], [1, 3, 5], [2, 3, 4]])
        )
    }

    func testHandlesImpossibleInput()
    {
        XCTAssertEqual(CombinationSumIII.solve(4, 1), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            normalized(CombinationSumIII.solve(3, 15)),
            normalized([[1, 5, 9], [1, 6, 8], [2, 4, 9], [2, 5, 8], [2, 6, 7], [3, 4, 8], [3, 5, 7], [4, 5, 6]])
        )
    }

    private func normalized(_ values: [[Int]]) -> [[Int]]
    {
        values.sorted { lhs, rhs in
            key(for: lhs) < key(for: rhs)
        }
    }

    private func key(for values: [Int]) -> String
    {
        values.map(String.init).joined(separator: ",")
    }
}
