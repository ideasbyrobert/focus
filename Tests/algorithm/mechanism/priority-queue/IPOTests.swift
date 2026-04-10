import XCTest
@testable import AlgorithmPriorityQueue

final class IPOTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(IPO.solve(2, 0, [1, 2, 3], [0, 1, 1]), 4)
    }

    func testHandlesUnavailableProjects()
    {
        XCTAssertEqual(IPO.solve(3, 0, [1, 2, 3], [1, 1, 2]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(IPO.solve(4, 1, [2, 4, 6, 8, 1, 3], [0, 1, 2, 3, 1, 5]), 22)
    }
}
