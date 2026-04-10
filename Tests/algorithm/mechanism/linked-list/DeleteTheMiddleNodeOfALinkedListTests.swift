import XCTest
@testable import AlgorithmLinkedList

final class DeleteTheMiddleNodeOfALinkedListTests: XCTestCase
{
    func testDeletesCanonicalMiddleNode()
    {
        let result = DeleteTheMiddleNodeOfALinkedList.solve(buildList([1, 3, 4, 7, 1, 2, 6]))

        XCTAssertEqual(listValues(from: result), [1, 3, 4, 1, 2, 6])
    }

    func testDeletesMiddleNodeFromEvenLengthList()
    {
        let result = DeleteTheMiddleNodeOfALinkedList.solve(buildList([1, 2, 3, 4]))

        XCTAssertEqual(listValues(from: result), [1, 2, 4])
    }

    func testHandlesSingleNodeList()
    {
        XCTAssertNil(DeleteTheMiddleNodeOfALinkedList.solve(buildList([1])))
    }

    func testHandlesTwoNodeList()
    {
        let result = DeleteTheMiddleNodeOfALinkedList.solve(buildList([1, 2]))

        XCTAssertEqual(listValues(from: result), [1])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = DeleteTheMiddleNodeOfALinkedList.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]))

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 4, 5, 7, 8, 9, 10, 11])
    }
}
