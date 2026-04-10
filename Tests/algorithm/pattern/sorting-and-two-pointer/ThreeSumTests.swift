import XCTest
@testable import AlgorithmSortingAndTwoPointer

final class ThreeSumTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let result = ThreeSum.solve([-1, 0, 1, 2, -1, -4])

        XCTAssertEqual(normalize(result), [[-1, -1, 2], [-1, 0, 1]])
    }

    func testHandlesAllZeroes()
    {
        let result = ThreeSum.solve([0, 0, 0, 0])

        XCTAssertEqual(normalize(result), [[0, 0, 0]])
    }

    func testHandlesInputWithNoTriplets()
    {
        XCTAssertEqual(ThreeSum.solve([1, 2, -2, -1]), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = ThreeSum.solve([-6, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6])

        XCTAssertEqual(
            normalize(result),
            [
                [-6, 0, 6],
                [-6, 1, 5],
                [-6, 2, 4],
                [-4, -2, 6],
                [-4, -1, 5],
                [-4, 0, 4],
                [-4, 1, 3],
                [-3, -2, 5],
                [-3, -1, 4],
                [-3, 0, 3],
                [-3, 1, 2],
                [-2, -1, 3],
                [-2, 0, 2],
                [-1, 0, 1],
            ]
        )
    }

    private func normalize(_ triplets: [[Int]]) -> [[Int]]
    {
        triplets
            .map
            {
                $0.sorted()
            }
            .sorted
            {
                if $0[0] != $1[0]
                {
                    return $0[0] < $1[0]
                }

                if $0[1] != $1[1]
                {
                    return $0[1] < $1[1]
                }

                return $0[2] < $1[2]
            }
    }
}
