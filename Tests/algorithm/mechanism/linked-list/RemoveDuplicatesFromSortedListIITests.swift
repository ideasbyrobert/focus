import XCTest
@testable import AlgorithmLinkedList

final class RemoveDuplicatesFromSortedListIITests: XCTestCase
{
    func testRemovesCanonicalDuplicateRuns()
    {
        let result = RemoveDuplicatesFromSortedListII.solve(buildList([1, 2, 3, 3, 4, 4, 5]))

        XCTAssertEqual(listValues(from: result), [1, 2, 5])
    }

    func testRemovesDuplicateRunAtTheHead()
    {
        let result = RemoveDuplicatesFromSortedListII.solve(buildList([1, 1, 1, 2, 3]))

        XCTAssertEqual(listValues(from: result), [2, 3])
    }

    func testRemovesAllValuesWhenEveryValueIsDuplicated()
    {
        let result = RemoveDuplicatesFromSortedListII.solve(buildList([1, 1, 2, 2]))

        XCTAssertEqual(listValues(from: result), [])
    }

    func testLeavesListUnchangedWhenEveryValueIsUnique()
    {
        let result = RemoveDuplicatesFromSortedListII.solve(buildList([1, 2, 3, 4]))

        XCTAssertEqual(listValues(from: result), [1, 2, 3, 4])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = RemoveDuplicatesFromSortedListII.solve(
            buildList([0, 0, 1, 2, 3, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9])
        )

        XCTAssertEqual(listValues(from: result), [1, 2, 5, 7, 9])
    }
}
