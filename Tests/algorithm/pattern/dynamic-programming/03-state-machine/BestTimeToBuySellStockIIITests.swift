import XCTest
@testable import AlgorithmDynamicProgramming

final class BestTimeToBuySellStockIIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockIII.solve([3, 3, 5, 0, 0, 3, 1, 4]), 6)
    }

    func testHandlesMonotonicIncrease()
    {
        XCTAssertEqual(BestTimeToBuySellStockIII.solve([1, 2, 3, 4, 5]), 4)
    }

    func testHandlesMonotonicDecline()
    {
        XCTAssertEqual(BestTimeToBuySellStockIII.solve([7, 6, 4, 3, 1]), 0)
    }

    func testHandlesLongDebugFriendlyPrices()
    {
        XCTAssertEqual(BestTimeToBuySellStockIII.solve([1, 4, 2, 7, 5, 11, 3, 9, 6, 10]), 17)
    }
}
