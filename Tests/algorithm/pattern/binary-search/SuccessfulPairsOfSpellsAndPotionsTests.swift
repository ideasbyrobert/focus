import XCTest
@testable import AlgorithmBinarySearch

final class SuccessfulPairsOfSpellsAndPotionsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SuccessfulPairsOfSpellsAndPotions.solve([5, 1, 3], [1, 2, 3, 4, 5], success: 7), [4, 0, 3])
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(SuccessfulPairsOfSpellsAndPotions.solve([3, 1, 2], [8, 5, 8], success: 16), [2, 0, 2])
    }

    func testHandlesNoSuccessfulPairs()
    {
        XCTAssertEqual(SuccessfulPairsOfSpellsAndPotions.solve([1, 1], [1, 1, 1], success: 5), [0, 0])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            SuccessfulPairsOfSpellsAndPotions.solve([2, 4, 6, 8, 10], [1, 3, 5, 7, 9, 11, 13], success: 44),
            [0, 2, 3, 4, 5]
        )
    }
}
