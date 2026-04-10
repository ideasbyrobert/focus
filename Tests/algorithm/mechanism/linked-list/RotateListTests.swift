import XCTest
@testable import AlgorithmLinkedList

final class RotateListTests: XCTestCase
{
    func testRotatesCanonicalInput()
    {
        let result = RotateList.solve(buildList([1, 2, 3, 4, 5]), by: 2)

        XCTAssertEqual(listValues(from: result), [4, 5, 1, 2, 3])
    }

    func testHandlesStepCountGreaterThanLength()
    {
        let result = RotateList.solve(buildList([0, 1, 2]), by: 4)

        XCTAssertEqual(listValues(from: result), [2, 0, 1])
    }

    func testLeavesListUnchangedForZeroSteps()
    {
        let result = RotateList.solve(buildList([1, 2, 3]), by: 0)

        XCTAssertEqual(listValues(from: result), [1, 2, 3])
    }

    func testHandlesSingleNodeList()
    {
        let result = RotateList.solve(buildList([1]), by: 99)

        XCTAssertEqual(listValues(from: result), [1])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = RotateList.solve(buildList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]), by: 5)

        XCTAssertEqual(listValues(from: result), [8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7])
    }
}
