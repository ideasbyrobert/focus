import XCTest
@testable import AlgorithmGraph

final class CourseScheduleIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(CourseScheduleII.solve(2, [[1, 0]]), [0, 1])
    }

    func testReturnsEmptyArrayWhenCycleExists()
    {
        XCTAssertEqual(CourseScheduleII.solve(2, [[1, 0], [0, 1]]), [])
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

        let order = CourseScheduleII.solve(8, prerequisites)

        XCTAssertEqual(order.count, 8)
        XCTAssertTrue(isValidCourseOrder(order, courseCount: 8, prerequisites: prerequisites))
    }

    private func isValidCourseOrder(_ order: [Int], courseCount: Int, prerequisites: [[Int]]) -> Bool
    {
        guard order.count == courseCount else
        {
            return false
        }

        var positions: [Int: Int] = [:]

        for index in order.indices
        {
            positions[order[index]] = index
        }

        for prerequisite in prerequisites
        {
            let course = prerequisite[0]
            let dependency = prerequisite[1]

            if positions[dependency]! > positions[course]!
            {
                return false
            }
        }

        return true
    }
}
