import XCTest
@testable import AlgorithmLinkedList

final class RemoveNthNodeFromEndOfListTests: XCTestCase
{
    func testRemovesCanonicalTarget()
    {
        let result = RemoveNthNodeFromEndOfList.solve(buildList([1, 2, 3, 4, 5]), removingNthFromEnd: 2)

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 5])
    }

    func testRemovesHeadWhenNthMatchesLength()
    {
        let result = RemoveNthNodeFromEndOfList.solve(buildList([1, 2]), removingNthFromEnd: 2)

        XCTAssertEqual(listValues(from: result), [2])
    }

    func testHandlesSingleNodeList()
    {
        XCTAssertNil(RemoveNthNodeFromEndOfList.solve(buildList([1]), removingNthFromEnd: 1))
    }

    func testLeavesListUnchangedWhenNExceedsLength()
    {
        let result = RemoveNthNodeFromEndOfList.solve(buildList([1, 2, 3]), removingNthFromEnd: 5)

        XCTAssertEqual(listValues(from: result), [1, 2, 3])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = RemoveNthNodeFromEndOfList.solve(
            buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
            removingNthFromEnd: 7
        )

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12])
    }
}
