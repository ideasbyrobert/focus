import XCTest
@testable import AlgorithmGraph

final class MinimumGeneticMutationTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            MinimumGeneticMutation.solve("AACCGGTT", "AACCGGTA", ["AACCGGTA"]),
            1
        )
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(
            MinimumGeneticMutation.solve(
                "AACCGGTT",
                "AAACGGTA",
                ["AACCGGTA", "AACCGCTA", "AAACGGTA"]
            ),
            2
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let bank = [
            "AAAAAAAT",
            "AAAAAATT",
            "AAAAATTT",
            "AAAATTTT",
            "AAATTTTT",
            "AATTTTTT",
            "ATTTTTTT",
            "TTTTTTTT",
        ]

        XCTAssertEqual(MinimumGeneticMutation.solve("AAAAAAAA", "TTTTTTTT", bank), 8)
    }

    func testReturnsNegativeOneWhenMutationIsImpossible()
    {
        XCTAssertEqual(
            MinimumGeneticMutation.solve("AACCGGTT", "AAACGGTA", ["AACCGATT", "AACCGATA", "AAACGATA"]),
            -1
        )
    }
}
