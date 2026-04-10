import XCTest
@testable import AlgorithmBacktracking

final class CombinationsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            normalized(Combinations.solve(4, 2)),
            normalized([[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]])
        )
    }

    func testHandlesChooseZero()
    {
        XCTAssertEqual(Combinations.solve(4, 0), [[]])
    }

    func testHandlesImpossibleChoice()
    {
        XCTAssertEqual(Combinations.solve(3, 4), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let combinations = Combinations.solve(6, 4)

        XCTAssertEqual(combinations.count, 15)
        XCTAssertTrue(combinations.contains([1, 2, 3, 4]))
        XCTAssertTrue(combinations.contains([3, 4, 5, 6]))
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
