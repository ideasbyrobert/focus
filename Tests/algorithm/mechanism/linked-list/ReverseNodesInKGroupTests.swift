import XCTest
@testable import AlgorithmLinkedList

final class ReverseNodesInKGroupTests: XCTestCase
{
    func testReversesCanonicalPairs()
    {
        let result = ReverseNodesInKGroup.solve(buildList([1, 2, 3, 4, 5]), groupSize: 2)

        XCTAssertEqual(listValues(from: result), [2, 1, 4, 3, 5])
    }

    func testReversesCanonicalTriplets()
    {
        let result = ReverseNodesInKGroup.solve(buildList([1, 2, 3, 4, 5]), groupSize: 3)

        XCTAssertEqual(listValues(from: result), [3, 2, 1, 4, 5])
    }

    func testLeavesListUnchangedForSingleNodeGroups()
    {
        let result = ReverseNodesInKGroup.solve(buildList([1, 2, 3]), groupSize: 1)

        XCTAssertEqual(listValues(from: result), [1, 2, 3])
    }

    func testLeavesListUnchangedWhenGroupSizeExceedsLength()
    {
        let result = ReverseNodesInKGroup.solve(buildList([1, 2, 3]), groupSize: 5)

        XCTAssertEqual(listValues(from: result), [1, 2, 3])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = ReverseNodesInKGroup.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]), groupSize: 4)

        XCTAssertEqual(listValues(from: result), [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9])
    }
}
