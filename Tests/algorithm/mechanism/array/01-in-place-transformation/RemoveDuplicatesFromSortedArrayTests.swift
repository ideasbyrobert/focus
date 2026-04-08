import XCTest
@testable import AlgorithmArray

final class RemoveDuplicatesFromSortedArrayTests: XCTestCase
{
    func testRemovesDuplicatesFromCanonicalInput()
    {
        var numbers = [1, 1, 2]

        let count = RemoveDuplicatesFromSortedArray.solve(&numbers)

        XCTAssertEqual(count, 2)
        XCTAssertEqual(Array(numbers.prefix(count)), [1, 2])
    }

    func testHandlesEmptyArray()
    {
        var numbers: [Int] = []

        let count = RemoveDuplicatesFromSortedArray.solve(&numbers)

        XCTAssertEqual(count, 0)
    }

    func testKeepsAllUniqueValues()
    {
        var numbers = [1, 2, 3, 4, 5]

        let count = RemoveDuplicatesFromSortedArray.solve(&numbers)

        XCTAssertEqual(count, 5)
        XCTAssertEqual(Array(numbers.prefix(count)), [1, 2, 3, 4, 5])
    }

    func testCollapsesLongDuplicateRuns()
    {
        var numbers = [0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5]

        let count = RemoveDuplicatesFromSortedArray.solve(&numbers)

        XCTAssertEqual(count, 6)
        XCTAssertEqual(Array(numbers.prefix(count)), [0, 1, 2, 3, 4, 5])
    }

    func testHandlesSingleValueInput()
    {
        var numbers = [9]

        let count = RemoveDuplicatesFromSortedArray.solve(&numbers)

        XCTAssertEqual(count, 1)
        XCTAssertEqual(Array(numbers.prefix(count)), [9])
    }
}
