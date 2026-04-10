import XCTest
@testable import AlgorithmDynamicProgramming

final class CoinChangeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(CoinChange.solve([1, 2, 5], 11), 3)
    }

    func testReturnsNegativeOneWhenAmountCannotBeMade()
    {
        XCTAssertEqual(CoinChange.solve([2], 3), -1)
    }

    func testHandlesZeroAmount()
    {
        XCTAssertEqual(CoinChange.solve([1], 0), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(CoinChange.solve([1, 3, 4, 7], 29), 5)
    }
}
