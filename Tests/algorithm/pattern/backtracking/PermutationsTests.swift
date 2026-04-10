import XCTest
@testable import AlgorithmBacktracking

final class PermutationsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            normalized(Permutations.solve([1, 2, 3])),
            normalized([[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]])
        )
    }

    func testHandlesSingleElementInput()
    {
        XCTAssertEqual(Permutations.solve([7]), [[7]])
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(Permutations.solve([]), [[]])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let permutations = Permutations.solve([1, 2, 3, 4])

        XCTAssertEqual(permutations.count, 24)
        XCTAssertTrue(permutations.contains([1, 2, 3, 4]))
        XCTAssertTrue(permutations.contains([4, 3, 2, 1]))
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
