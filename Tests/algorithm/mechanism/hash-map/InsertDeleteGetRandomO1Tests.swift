import XCTest
@testable import AlgorithmHashMap

final class InsertDeleteGetRandomO1Tests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let set = RandomizedSet()

        XCTAssertTrue(set.insert(1))
        XCTAssertFalse(set.remove(2))
        XCTAssertTrue(set.insert(2))

        let firstRandom = set.getRandom()

        XCTAssertTrue([1, 2].contains(firstRandom))
        XCTAssertTrue(set.remove(1))
        XCTAssertFalse(set.insert(2))
        XCTAssertEqual(set.getRandom(), 2)
    }

    func testRejectsDuplicateInsert()
    {
        let set = RandomizedSet()

        XCTAssertTrue(set.insert(10))
        XCTAssertFalse(set.insert(10))
    }

    func testRejectsMissingRemove()
    {
        let set = RandomizedSet()

        XCTAssertFalse(set.remove(50))
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let set = RandomizedSet()

        XCTAssertTrue(set.insert(4))
        XCTAssertTrue(set.insert(8))
        XCTAssertTrue(set.insert(12))
        XCTAssertTrue(set.remove(8))
        XCTAssertTrue(set.insert(16))
        XCTAssertFalse(set.insert(4))
        XCTAssertTrue(set.remove(12))
        XCTAssertTrue(set.insert(20))

        let randomValues = (0..<12).map
        {
            _ in

            set.getRandom()
        }

        XCTAssertTrue(randomValues.allSatisfy
        {
            [4, 16, 20].contains($0)
        })
    }
}
