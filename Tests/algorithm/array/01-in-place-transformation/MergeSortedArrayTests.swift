import XCTest
@testable import AlgorithmArray

final class MergeSortedArrayTests: XCTestCase
{
    func testMergesTwoSortedInputs()
    {
        var destination = [1, 2, 3, 0, 0, 0]

        MergeSortedArray.solve(
            &destination,
            validCount: 3,
            merging: [2, 5, 6],
            validCount: 3
        )

        XCTAssertEqual(destination, [1, 2, 2, 3, 5, 6])
    }

    func testHandlesEmptyDestinationPrefix()
    {
        var destination = [0]

        MergeSortedArray.solve(
            &destination,
            validCount: 0,
            merging: [1],
            validCount: 1
        )

        XCTAssertEqual(destination, [1])
    }

    func testLeavesDestinationUnchangedWhenSourceIsEmpty()
    {
        var destination = [1, 2, 3]

        MergeSortedArray.solve(
            &destination,
            validCount: 3,
            merging: [],
            validCount: 0
        )

        XCTAssertEqual(destination, [1, 2, 3])
    }

    func testMergesNegativeAndPositiveValues()
    {
        var destination = [-5, -3, 0, 0, 0, 0]

        MergeSortedArray.solve(
            &destination,
            validCount: 2,
            merging: [-4, -2, 6, 8],
            validCount: 4
        )

        XCTAssertEqual(destination, [-5, -4, -3, -2, 6, 8])
    }

    func testMergesLongInterleavingInputs()
    {
        var destination = [1, 4, 7, 10, 13, 16, 0, 0, 0, 0, 0, 0]

        MergeSortedArray.solve(
            &destination,
            validCount: 6,
            merging: [2, 3, 8, 11, 14, 15],
            validCount: 6
        )

        XCTAssertEqual(destination, [1, 2, 3, 4, 7, 8, 10, 11, 13, 14, 15, 16])
    }
}
