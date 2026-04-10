import XCTest
@testable import AlgorithmPrefixSum

final class FindPivotIndexTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(FindPivotIndex.solve([1, 7, 3, 6, 5, 6]), 3)
    }

    func testHandlesNoPivot()
    {
        XCTAssertEqual(FindPivotIndex.solve([1, 2, 3]), -1)
    }

    func testHandlesPivotAtTheBeginning()
    {
        XCTAssertEqual(FindPivotIndex.solve([2, 1, -1]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(FindPivotIndex.solve([4, 2, 1, 6, 3, 1, 4, 5, 2, 2]), -1)
        XCTAssertEqual(FindPivotIndex.solve([5, 1, 2, 3, 6, 3, 2, 1, 5]), 4)
    }
}
