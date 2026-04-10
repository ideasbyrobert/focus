import XCTest
@testable import AlgorithmHeap

final class SmallestNumberInInfiniteSetTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let set = SmallestInfiniteSet()

        XCTAssertEqual(set.popSmallest(), 1)
        XCTAssertEqual(set.popSmallest(), 2)
        set.addBack(1)
        XCTAssertEqual(set.popSmallest(), 1)
        XCTAssertEqual(set.popSmallest(), 3)
    }

    func testIgnoresNumbersThatWereNeverRemoved()
    {
        let set = SmallestInfiniteSet()

        set.addBack(5)

        XCTAssertEqual(set.popSmallest(), 1)
        XCTAssertEqual(set.popSmallest(), 2)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let set = SmallestInfiniteSet()

        let results = [
            set.popSmallest(),
            set.popSmallest(),
            set.popSmallest(),
            set.popSmallest(),
        ]

        set.addBack(2)
        set.addBack(3)

        let moreResults = [
            set.popSmallest(),
            set.popSmallest(),
        ]

        set.addBack(1)

        let finalResults = [
            set.popSmallest(),
            set.popSmallest(),
            set.popSmallest(),
        ]

        XCTAssertEqual(results + moreResults + finalResults, [1, 2, 3, 4, 2, 3, 1, 5, 6])
    }
}
