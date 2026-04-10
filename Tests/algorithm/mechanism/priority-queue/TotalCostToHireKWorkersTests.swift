import XCTest
@testable import AlgorithmPriorityQueue

final class TotalCostToHireKWorkersTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            TotalCostToHireKWorkers.solve([17, 12, 10, 2, 7, 2, 11, 20, 8], workerCount: 3, candidateCount: 4),
            11
        )
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(
            TotalCostToHireKWorkers.solve([1, 2, 4, 1], workerCount: 3, candidateCount: 3),
            4
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            TotalCostToHireKWorkers.solve([9, 4, 7, 3, 8, 2, 6, 5, 1, 10], workerCount: 5, candidateCount: 3),
            15
        )
    }

    func testHandlesZeroWorkers()
    {
        XCTAssertEqual(TotalCostToHireKWorkers.solve([5, 4, 3], workerCount: 0, candidateCount: 2), 0)
    }
}
