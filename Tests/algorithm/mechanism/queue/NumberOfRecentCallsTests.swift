import XCTest
@testable import AlgorithmQueue

final class NumberOfRecentCallsTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let counter = RecentCounter()

        XCTAssertEqual(counter.ping(1), 1)
        XCTAssertEqual(counter.ping(100), 2)
        XCTAssertEqual(counter.ping(3001), 3)
        XCTAssertEqual(counter.ping(3002), 3)
    }

    func testDropsCallsThatFallOutsideTheWindow()
    {
        let counter = RecentCounter()

        XCTAssertEqual(counter.ping(1), 1)
        XCTAssertEqual(counter.ping(3001), 2)
        XCTAssertEqual(counter.ping(6001), 2)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let counter = RecentCounter()

        let results = [
            counter.ping(100),
            counter.ping(500),
            counter.ping(1000),
            counter.ping(2500),
            counter.ping(3000),
            counter.ping(3300),
            counter.ping(6000),
            counter.ping(6200),
            counter.ping(6500),
            counter.ping(9000),
        ]

        XCTAssertEqual(results, [1, 2, 3, 4, 5, 5, 3, 3, 3, 4])
    }
}
