import XCTest
@testable import AlgorithmLinkedList

final class LinkedListCycleTests: XCTestCase
{
    func testDetectsCanonicalCycle()
    {
        let head = buildCyclicList([3, 2, 0, -4], cycleAt: 1)

        XCTAssertTrue(LinkedListCycle.solve(head))
    }

    func testReturnsFalseForAcyclicList()
    {
        XCTAssertFalse(LinkedListCycle.solve(buildList([1, 2, 3, 4])))
    }

    func testDetectsSingleNodeSelfCycle()
    {
        let head = buildCyclicList([1], cycleAt: 0)

        XCTAssertTrue(LinkedListCycle.solve(head))
    }

    func testReturnsFalseForSingleNodeWithoutCycle()
    {
        XCTAssertFalse(LinkedListCycle.solve(buildList([1])))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let head = buildCyclicList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], cycleAt: 4)

        XCTAssertTrue(LinkedListCycle.solve(head))
    }
}
