import XCTest
@testable import AlgorithmArray

final class RemoveDuplicatesFromSortedArrayIITests: XCTestCase
{
    func testAllowsAtMostTwoDuplicatesInCanonicalInput()
    {
        var numbers = [1, 1, 1, 2, 2, 3]

        let count = RemoveDuplicatesFromSortedArrayII.solve(&numbers)

        XCTAssertEqual(count, 5)
        XCTAssertEqual(Array(numbers.prefix(count)), [1, 1, 2, 2, 3])
    }

    func testAllowsAtMostTwoAcrossLongRuns()
    {
        var numbers = [0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3]

        let count = RemoveDuplicatesFromSortedArrayII.solve(&numbers)

        XCTAssertEqual(count, 8)
        XCTAssertEqual(Array(numbers.prefix(count)), [0, 0, 1, 1, 2, 2, 3, 3])
    }

    func testKeepsShortArraysAsIs()
    {
        var numbers = [4, 4]

        let count = RemoveDuplicatesFromSortedArrayII.solve(&numbers)

        XCTAssertEqual(count, 2)
        XCTAssertEqual(Array(numbers.prefix(count)), [4, 4])
    }

    func testHandlesEmptyArray()
    {
        var numbers: [Int] = []

        let count = RemoveDuplicatesFromSortedArrayII.solve(&numbers)

        XCTAssertEqual(count, 0)
    }

    func testHandlesNegativeDuplicateRuns()
    {
        var numbers = [-3, -3, -3, -2, -2, -1, -1, -1, 0, 0, 0]

        let count = RemoveDuplicatesFromSortedArrayII.solve(&numbers)

        XCTAssertEqual(count, 8)
        XCTAssertEqual(Array(numbers.prefix(count)), [-3, -3, -2, -2, -1, -1, 0, 0])
    }
}
