import XCTest
@testable import AlgorithmSlidingWindow

final class BestTimeToBuyAndSellStockTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([7, 1, 5, 3, 6, 4]), 5)
    }

    func testHandlesDescendingPrices()
    {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([7, 6, 4, 3, 1]), 0)
    }

    func testHandlesSinglePriceInput()
    {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([9]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(BestTimeToBuyAndSellStock.solve([9, 8, 1, 3, 7, 2, 6, 4, 10, 1, 11]), 10)
    }
}
