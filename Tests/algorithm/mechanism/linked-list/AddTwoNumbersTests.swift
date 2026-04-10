import XCTest
@testable import AlgorithmLinkedList

final class AddTwoNumbersTests: XCTestCase
{
    func testAddsCanonicalInput()
    {
        let result = AddTwoNumbers.solve(buildList([2, 4, 3]), buildList([5, 6, 4]))

        XCTAssertEqual(listValues(from: result), [7, 0, 8])
    }

    func testHandlesCarryAcrossEntireList()
    {
        let result = AddTwoNumbers.solve(buildList([9, 9, 9, 9]), buildList([1]))

        XCTAssertEqual(listValues(from: result), [0, 0, 0, 0, 1])
    }

    func testHandlesOneEmptyList()
    {
        let result = AddTwoNumbers.solve(nil, buildList([0]))

        XCTAssertEqual(listValues(from: result), [0])
    }

    func testHandlesUnequalLengths()
    {
        let result = AddTwoNumbers.solve(buildList([1, 8]), buildList([0]))

        XCTAssertEqual(listValues(from: result), [1, 8])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = AddTwoNumbers.solve(
            buildList([9, 9, 9, 9, 9, 9, 9, 9, 9, 9]),
            buildList([1])
        )

        XCTAssertEqual(listValues(from: result), [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1])
    }
}
