import XCTest
@testable import AlgorithmGraph

final class CourseScheduleTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertTrue(CourseSchedule.solve(2, [[1, 0]]))
    }

    func testDetectsCycle()
    {
        XCTAssertFalse(CourseSchedule.solve(2, [[1, 0], [0, 1]]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let prerequisites = [
            [1, 0],
            [2, 0],
            [3, 1],
            [4, 1],
            [5, 2],
            [6, 3],
            [6, 4],
            [7, 5],
            [7, 6],
        ]

        XCTAssertTrue(CourseSchedule.solve(8, prerequisites))
    }
}
