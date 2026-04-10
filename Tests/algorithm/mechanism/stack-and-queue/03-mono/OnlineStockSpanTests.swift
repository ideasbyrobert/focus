import XCTest
@testable import AlgorithmStackAndQueue

final class OnlineStockSpanTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let spanner = StockSpanner()

        let results = [
            spanner.next(100),
            spanner.next(80),
            spanner.next(60),
            spanner.next(70),
            spanner.next(60),
            spanner.next(75),
            spanner.next(85),
        ]

        XCTAssertEqual(results, [1, 1, 1, 2, 1, 4, 6])
    }

    func testHandlesIncreasingPrices()
    {
        let spanner = StockSpanner()

        let results = [
            spanner.next(31),
            spanner.next(41),
            spanner.next(48),
            spanner.next(59),
        ]

        XCTAssertEqual(results, [1, 2, 3, 4])
    }

    func testHandlesDuplicatePrices()
    {
        let spanner = StockSpanner()

        let results = [
            spanner.next(50),
            spanner.next(50),
            spanner.next(50),
        ]

        XCTAssertEqual(results, [1, 2, 3])
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let spanner = StockSpanner()

        let results = [
            spanner.next(90),
            spanner.next(80),
            spanner.next(70),
            spanner.next(60),
            spanner.next(75),
            spanner.next(85),
            spanner.next(65),
            spanner.next(95),
            spanner.next(50),
            spanner.next(55),
            spanner.next(60),
            spanner.next(120),
        ]

        XCTAssertEqual(results, [1, 1, 1, 1, 3, 5, 1, 8, 1, 2, 3, 12])
    }
}
