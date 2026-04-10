import XCTest
@testable import AlgorithmGreedySelection

final class CandyTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(Candy.solve([1, 0, 2]), 5)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(Candy.solve([1, 2, 2]), 4)
    }

    func testHandlesUniformRatings()
    {
        XCTAssertEqual(Candy.solve([1, 1, 1, 1]), 4)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(Candy.solve([1, 3, 4, 5, 2, 2, 1, 3, 4, 1, 0, 2]), 24)
    }
}
