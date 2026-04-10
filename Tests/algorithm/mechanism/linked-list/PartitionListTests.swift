import XCTest
@testable import AlgorithmLinkedList

final class PartitionListTests: XCTestCase
{
    func testPartitionsCanonicalInput()
    {
        let result = PartitionList.solve(buildList([1, 4, 3, 2, 5, 2]), partitioningAround: 3)

        XCTAssertEqual(listValues(from: result), [1, 2, 2, 4, 3, 5])
    }

    func testLeavesListUnchangedWhenAllValuesAreLessThanPivot()
    {
        let result = PartitionList.solve(buildList([1, 1, 2]), partitioningAround: 5)

        XCTAssertEqual(listValues(from: result), [1, 1, 2])
    }

    func testLeavesListUnchangedWhenAllValuesAreGreaterOrEqual()
    {
        let result = PartitionList.solve(buildList([5, 6, 7]), partitioningAround: 3)

        XCTAssertEqual(listValues(from: result), [5, 6, 7])
    }

    func testKeepsRelativeOrderAcrossBothPartitions()
    {
        let result = PartitionList.solve(buildList([3, 1, 2, 3, 2, 4]), partitioningAround: 3)

        XCTAssertEqual(listValues(from: result), [1, 2, 2, 3, 3, 4])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = PartitionList.solve(
            buildList([5, 1, 8, 0, 3, 7, 2, 6, 4, 9, 2, 5]),
            partitioningAround: 5
        )

        XCTAssertEqual(listValues(from: result), [1, 0, 3, 2, 4, 2, 5, 8, 7, 6, 9, 5])
    }
}
