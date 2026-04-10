import XCTest
@testable import AlgorithmDivideAndConquer

final class SortListTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let head = buildList([4, 2, 1, 3])

        XCTAssertEqual(listValues(from: SortList.solve(head)), [1, 2, 3, 4])
    }

    func testHandlesNegativeAndZeroValues()
    {
        let head = buildList([-1, 5, 3, 4, 0])

        XCTAssertEqual(listValues(from: SortList.solve(head)), [-1, 0, 3, 4, 5])
    }

    func testHandlesEmptyAndSingleNodeInputs()
    {
        XCTAssertNil(SortList.solve(nil))
        XCTAssertEqual(listValues(from: SortList.solve(buildList([1]))), [1])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let head = buildList([10, 1, 8, 3, 6, 2, 9, 4, 7, 5, 12, 11])

        XCTAssertEqual(listValues(from: SortList.solve(head)), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    }
}
