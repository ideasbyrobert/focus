import XCTest
@testable import AlgorithmLinkedList

final class MergeTwoSortedListsTests: XCTestCase
{
    func testMergesCanonicalInput()
    {
        let result = MergeTwoSortedLists.solve(buildList([1, 2, 4]), buildList([1, 3, 4]))

        XCTAssertEqual(listValues(from: result), [1, 1, 2, 3, 4, 4])
    }

    func testHandlesEmptyLeftList()
    {
        let result = MergeTwoSortedLists.solve(nil, buildList([0]))

        XCTAssertEqual(listValues(from: result), [0])
    }

    func testHandlesEmptyRightList()
    {
        let result = MergeTwoSortedLists.solve(buildList([0]), nil)

        XCTAssertEqual(listValues(from: result), [0])
    }

    func testMergesNegativeAndDuplicateValues()
    {
        let result = MergeTwoSortedLists.solve(buildList([-5, -1, 4, 4]), buildList([-3, -1, 2, 9]))

        XCTAssertEqual(listValues(from: result), [-5, -3, -1, -1, 2, 4, 4, 9])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = MergeTwoSortedLists.solve(
            buildList([1, 4, 7, 10, 13, 16]),
            buildList([2, 3, 8, 11, 14, 15])
        )

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 4, 7, 8, 10, 11, 13, 14, 15, 16])
    }
}
