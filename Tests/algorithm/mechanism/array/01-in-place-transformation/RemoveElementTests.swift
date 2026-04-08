import XCTest
@testable import AlgorithmArray

final class RemoveElementTests: XCTestCase
{
    func testRemovesTargetFromCanonicalInput()
    {
        var numbers = [3, 2, 2, 3]

        let count = RemoveElement.solve(&numbers, removing: 3)

        XCTAssertEqual(count, 2)
        XCTAssertEqual(Array(numbers.prefix(count)), [2, 2])
    }

    func testReturnsZeroWhenAllElementsMatch()
    {
        var numbers = [5, 5, 5, 5]

        let count = RemoveElement.solve(&numbers, removing: 5)

        XCTAssertEqual(count, 0)
        XCTAssertTrue(Array(numbers.prefix(count)).isEmpty)
    }

    func testLeavesArrayPrefixWhenNoValuesMatch()
    {
        var numbers = [1, 2, 3, 4]

        let count = RemoveElement.solve(&numbers, removing: 9)

        XCTAssertEqual(count, 4)
        XCTAssertEqual(Array(numbers.prefix(count)), [1, 2, 3, 4])
    }

    func testHandlesEmptyArray()
    {
        var numbers: [Int] = []

        let count = RemoveElement.solve(&numbers, removing: 7)

        XCTAssertEqual(count, 0)
    }

    func testRemovesTargetThroughoutLongInput()
    {
        var numbers = [5, 1, 5, 2, 3, 5, 4, 5, 6, 7, 5, 8, 9, 5, 10]

        let count = RemoveElement.solve(&numbers, removing: 5)

        XCTAssertEqual(count, 9)
        XCTAssertEqual(Array(numbers.prefix(count)), [1, 2, 3, 4, 6, 7, 8, 9, 10])
    }
}
