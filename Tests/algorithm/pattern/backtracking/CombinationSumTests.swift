import XCTest
@testable import AlgorithmBacktracking

final class CombinationSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 3, 6, 7], 7)),
            normalized([[2, 2, 3], [7]])
        )
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 3, 5], 8)),
            normalized([[2, 2, 2, 2], [2, 3, 3], [3, 5]])
        )
    }

    func testHandlesImpossibleInput()
    {
        XCTAssertEqual(CombinationSum.solve([4, 6], 5), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            normalized(CombinationSum.solve([2, 3, 5, 7, 8], 10)),
            normalized([[2, 2, 2, 2, 2], [2, 2, 3, 3], [2, 3, 5], [2, 8], [3, 7], [5, 5]])
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
