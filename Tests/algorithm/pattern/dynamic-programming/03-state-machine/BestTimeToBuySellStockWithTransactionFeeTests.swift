import XCTest
@testable import AlgorithmDynamicProgramming

final class BestTimeToBuySellStockWithTransactionFeeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockWithTransactionFee.solve([1, 3, 2, 8, 4, 9], fee: 2), 8)
    }

    func testHandlesMonotonicDecline()
    {
        XCTAssertEqual(BestTimeToBuySellStockWithTransactionFee.solve([9, 8, 7], fee: 1), 0)
    }

    func testHandlesAdditionalInput()
    {
        XCTAssertEqual(BestTimeToBuySellStockWithTransactionFee.solve([1, 3, 7, 5, 10, 3], fee: 3), 6)
    }

    func testHandlesLongDebugFriendlyPrices()
    {
        XCTAssertEqual(BestTimeToBuySellStockWithTransactionFee.solve([2, 5, 1, 7, 4, 9, 3, 11, 6, 13], fee: 2), 19)
    }
}
