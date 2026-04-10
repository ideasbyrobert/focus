import XCTest
@testable import AlgorithmDynamicProgramming

final class BestTimeToBuySellStockIVTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockIV.solve(2, [2, 4, 1]), 2)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockIV.solve(2, [3, 2, 6, 5, 0, 3]), 7)
    }

    func testHandlesLargeTransactionShortcut()
    {
        XCTAssertEqual(BestTimeToBuySellStockIV.solve(100, [1, 2, 3, 4, 5]), 4)
    }

    func testHandlesLongDebugFriendlyPrices()
    {
        XCTAssertEqual(BestTimeToBuySellStockIV.solve(3, [1, 4, 2, 7, 5, 11, 3, 9, 6, 10]), 20)
    }
}
