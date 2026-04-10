import XCTest
@testable import AlgorithmGreedySelection

final class GasStationTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(GasStation.solve([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]), 3)
    }

    func testHandlesImpossibleInput()
    {
        XCTAssertEqual(GasStation.solve([2, 3, 4], [3, 4, 3]), -1)
    }

    func testHandlesSingleStationThatWorks()
    {
        XCTAssertEqual(GasStation.solve([5], [4]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(GasStation.solve([4, 6, 7, 4, 5, 3, 5, 9, 2, 4], [6, 5, 3, 5, 2, 4, 3, 4, 3, 4]), 1)
    }
}
