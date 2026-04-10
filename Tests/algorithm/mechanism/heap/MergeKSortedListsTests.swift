import XCTest
@testable import AlgorithmHeap

final class MergeKSortedListsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let lists = [
            buildList([1, 4, 5]),
            buildList([1, 3, 4]),
            buildList([2, 6]),
        ]

        XCTAssertEqual(listValues(from: MergeKSortedLists.solve(lists)), [1, 1, 2, 3, 4, 4, 5, 6])
    }

    func testHandlesAllEmptyLists()
    {
        XCTAssertNil(MergeKSortedLists.solve([nil, nil]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let lists = [
            buildList([1, 5, 9]),
            buildList([2, 6, 10]),
            buildList([3, 7, 11]),
            buildList([4, 8, 12]),
        ]

        XCTAssertEqual(listValues(from: MergeKSortedLists.solve(lists)), Array(1...12))
    }

    func testHandlesSingleList()
    {
        XCTAssertEqual(listValues(from: MergeKSortedLists.solve([buildList([1, 2, 3])])), [1, 2, 3])
    }
}
