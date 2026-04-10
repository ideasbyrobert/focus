import XCTest
@testable import AlgorithmPrefixSum

final class FindTheHighestAltitudeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(FindTheHighestAltitude.solve([-5, 1, 5, 0, -7]), 1)
    }

    func testHandlesAlwaysAscendingRoute()
    {
        XCTAssertEqual(FindTheHighestAltitude.solve([4, 3, 2]), 9)
    }

    func testHandlesAlwaysDescendingRoute()
    {
        XCTAssertEqual(FindTheHighestAltitude.solve([-4, -3, -2]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(FindTheHighestAltitude.solve([3, -1, 4, -2, 5, -6, 2, 3, -1, 4, -3, 2]), 11)
    }
}
