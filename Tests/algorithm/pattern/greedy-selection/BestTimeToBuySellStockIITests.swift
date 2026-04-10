import XCTest
@testable import AlgorithmGreedySelection

final class BestTimeToBuySellStockIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockII.solve([7, 1, 5, 3, 6, 4]), 7)
    }

    func testHandlesDescendingPrices()
    {
        XCTAssertEqual(BestTimeToBuySellStockII.solve([7, 6, 4, 3, 1]), 0)
    }

    func testHandlesSingleDay()
    {
        XCTAssertEqual(BestTimeToBuySellStockII.solve([5]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockII.solve([1, 3, 2, 5, 4, 7, 6, 9, 8, 11]), 14)
    }
}
