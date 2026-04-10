import XCTest
@testable import AlgorithmLinkedList

final class LRUCacheTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let cache = LRUCache(2)

        cache.put(1, 1)
        cache.put(2, 2)

        XCTAssertEqual(cache.get(1), 1)

        cache.put(3, 3)

        XCTAssertEqual(cache.get(2), -1)

        cache.put(4, 4)

        XCTAssertEqual(cache.get(1), -1)
        XCTAssertEqual(cache.get(3), 3)
        XCTAssertEqual(cache.get(4), 4)
    }

    func testUpdatesExistingKeyAndRefreshesItsRecency()
    {
        let cache = LRUCache(2)

        cache.put(1, 1)
        cache.put(2, 2)
        cache.put(1, 10)
        cache.put(3, 3)

        XCTAssertEqual(cache.get(1), 10)
        XCTAssertEqual(cache.get(2), -1)
        XCTAssertEqual(cache.get(3), 3)
    }

    func testEvictsLeastRecentlyUsedAfterGetPromotion()
    {
        let cache = LRUCache(2)

        cache.put(1, 1)
        cache.put(2, 2)
        XCTAssertEqual(cache.get(1), 1)
        cache.put(3, 3)

        XCTAssertEqual(cache.get(1), 1)
        XCTAssertEqual(cache.get(2), -1)
        XCTAssertEqual(cache.get(3), 3)
    }

    func testHandlesZeroCapacity()
    {
        let cache = LRUCache(0)

        cache.put(1, 1)

        XCTAssertEqual(cache.get(1), -1)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let cache = LRUCache(3)
        var results: [Int] = []

        cache.put(1, 10)
        cache.put(2, 20)
        cache.put(3, 30)
        results.append(cache.get(2))
        cache.put(4, 40)
        results.append(cache.get(1))
        results.append(cache.get(3))
        cache.put(5, 50)
        results.append(cache.get(2))
        results.append(cache.get(4))
        results.append(cache.get(5))
        results.append(cache.get(3))

        XCTAssertEqual(results, [20, -1, 30, -1, 40, 50, 30])
    }
}
