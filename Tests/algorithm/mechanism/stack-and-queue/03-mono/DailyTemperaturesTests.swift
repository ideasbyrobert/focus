import XCTest
@testable import AlgorithmStackAndQueue

final class DailyTemperaturesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(DailyTemperatures.solve([73, 74, 75, 71, 69, 72, 76, 73]), [1, 1, 4, 2, 1, 1, 0, 0])
    }

    func testHandlesDecreasingTemperatures()
    {
        XCTAssertEqual(DailyTemperatures.solve([80, 79, 78, 77]), [0, 0, 0, 0])
    }

    func testHandlesSingleTemperature()
    {
        XCTAssertEqual(DailyTemperatures.solve([70]), [0])
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(DailyTemperatures.solve([70, 72, 71, 75, 74, 76, 73, 77, 72, 78, 79, 71]), [1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 0, 0])
    }
}
