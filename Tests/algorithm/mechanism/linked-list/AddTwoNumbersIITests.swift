import XCTest
@testable import AlgorithmLinkedList

final class AddTwoNumbersIITests: XCTestCase
{
    func testAddsCanonicalInput()
    {
        let result = AddTwoNumbersII.solve(buildList([7, 2, 4, 3]), buildList([5, 6, 4]))

        XCTAssertEqual(listValues(from: result), [7, 8, 0, 7])
    }

    func testHandlesCarryCreatingANewHead()
    {
        let result = AddTwoNumbersII.solve(buildList([9, 9, 9]), buildList([1]))

        XCTAssertEqual(listValues(from: result), [1, 0, 0, 0])
    }

    func testHandlesOneEmptyList()
    {
        let result = AddTwoNumbersII.solve(nil, buildList([0]))

        XCTAssertEqual(listValues(from: result), [0])
    }

    func testHandlesUnequalLengths()
    {
        let result = AddTwoNumbersII.solve(buildList([1, 2, 3, 4, 5]), buildList([5, 5]))

        XCTAssertEqual(listValues(from: result), [1, 2, 4, 0, 0])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = AddTwoNumbersII.solve(
            buildList([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]),
            buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
        )

        XCTAssertEqual(listValues(from: result), [1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0])
    }
}
