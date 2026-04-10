import XCTest
@testable import AlgorithmLinkedList

final class ReverseLinkedListIITests: XCTestCase
{
    func testReversesCanonicalSublist()
    {
        let result = ReverseLinkedListII.solve(buildList([1, 2, 3, 4, 5]), from: 2, to: 4)

        XCTAssertEqual(listValues(from: result), [1, 4, 3, 2, 5])
    }

    func testReversesSublistStartingAtHead()
    {
        let result = ReverseLinkedListII.solve(buildList([1, 2, 3, 4]), from: 1, to: 3)

        XCTAssertEqual(listValues(from: result), [3, 2, 1, 4])
    }

    func testLeavesSingleNodeSpanUnchanged()
    {
        let result = ReverseLinkedListII.solve(buildList([5]), from: 1, to: 1)

        XCTAssertEqual(listValues(from: result), [5])
    }

    func testReversesTailSegment()
    {
        let result = ReverseLinkedListII.solve(buildList([1, 2, 3, 4, 5]), from: 3, to: 5)

        XCTAssertEqual(listValues(from: result), [1, 2, 5, 4, 3])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = ReverseLinkedListII.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), from: 4, to: 8)

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 8, 7, 6, 5, 4, 9, 10])
    }
}
