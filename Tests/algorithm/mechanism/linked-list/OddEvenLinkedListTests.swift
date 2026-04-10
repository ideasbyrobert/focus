import XCTest
@testable import AlgorithmLinkedList

final class OddEvenLinkedListTests: XCTestCase
{
    func testReordersCanonicalInput()
    {
        let result = OddEvenLinkedList.solve(buildList([1, 2, 3, 4, 5]))

        XCTAssertEqual(listValues(from: result), [1, 3, 5, 2, 4])
    }

    func testReordersCanonicalEvenLengthInput()
    {
        let result = OddEvenLinkedList.solve(buildList([2, 1, 3, 5, 6, 4, 7]))

        XCTAssertEqual(listValues(from: result), [2, 3, 6, 7, 1, 5, 4])
    }

    func testHandlesEmptyList()
    {
        XCTAssertNil(OddEvenLinkedList.solve(nil))
    }

    func testHandlesSingleNodeList()
    {
        let result = OddEvenLinkedList.solve(buildList([7]))

        XCTAssertEqual(listValues(from: result), [7])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = OddEvenLinkedList.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))

        XCTAssertEqual(listValues(from: result), [1, 3, 5, 7, 9, 11, 2, 4, 6, 8, 10, 12])
    }
}
