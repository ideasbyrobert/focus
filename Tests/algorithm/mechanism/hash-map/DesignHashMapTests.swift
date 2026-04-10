import XCTest
@testable import AlgorithmHashMap

final class DesignHashMapTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let hashMap = MyHashMap()

        hashMap.put(1, 1)
        hashMap.put(2, 2)

        XCTAssertEqual(hashMap.get(1), 1)
        XCTAssertEqual(hashMap.get(3), -1)

        hashMap.put(2, 1)

        XCTAssertEqual(hashMap.get(2), 1)

        hashMap.remove(2)

        XCTAssertEqual(hashMap.get(2), -1)
    }

    func testUpdatesExistingValue()
    {
        let hashMap = MyHashMap()

        hashMap.put(10, 100)
        hashMap.put(10, 200)

        XCTAssertEqual(hashMap.get(10), 200)
    }

    func testHandlesBucketCollisions()
    {
        let hashMap = MyHashMap()

        hashMap.put(1, 10)
        hashMap.put(770, 20)

        XCTAssertEqual(hashMap.get(1), 10)
        XCTAssertEqual(hashMap.get(770), 20)

        hashMap.remove(1)

        XCTAssertEqual(hashMap.get(1), -1)
        XCTAssertEqual(hashMap.get(770), 20)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let hashMap = MyHashMap()

        hashMap.put(3, 30)
        hashMap.put(14, 140)
        hashMap.put(25, 250)
        hashMap.put(36, 360)
        hashMap.put(14, 141)
        hashMap.remove(25)
        hashMap.put(47, 470)
        hashMap.put(58, 580)

        let results = [
            hashMap.get(3),
            hashMap.get(14),
            hashMap.get(25),
            hashMap.get(36),
            hashMap.get(47),
            hashMap.get(58),
        ]

        XCTAssertEqual(results, [30, 141, -1, 360, 470, 580])
    }
}
