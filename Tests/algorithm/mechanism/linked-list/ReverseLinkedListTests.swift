import XCTest
@testable import AlgorithmLinkedList

final class ReverseLinkedListTests: XCTestCase
{
    func testReversesCanonicalInput()
    {
        let result = ReverseLinkedList.solve(buildList([1, 2, 3, 4, 5]))

        XCTAssertEqual(listValues(from: result), [5, 4, 3, 2, 1])
    }

    func testHandlesEmptyList()
    {
        XCTAssertNil(ReverseLinkedList.solve(nil))
    }

    func testHandlesSingleNodeList()
    {
        let result = ReverseLinkedList.solve(buildList([9]))

        XCTAssertEqual(listValues(from: result), [9])
    }

    func testReversesTwoNodeList()
    {
        let result = ReverseLinkedList.solve(buildList([1, 2]))

        XCTAssertEqual(listValues(from: result), [2, 1])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = ReverseLinkedList.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))

        XCTAssertEqual(listValues(from: result), [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
    }
}
