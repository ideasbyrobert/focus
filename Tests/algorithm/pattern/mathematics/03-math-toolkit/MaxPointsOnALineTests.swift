import XCTest
@testable import AlgorithmMathFluency

final class MaxPointsOnALineTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaxPointsOnALine.solve([[1, 1], [2, 2], [3, 3]]), 3)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(MaxPointsOnALine.solve([[1, 1], [3, 2], [5, 3], [4, 1], [2, 3], [1, 4]]), 4)
    }

    func testHandlesDuplicatePoints()
    {
        XCTAssertEqual(MaxPointsOnALine.solve([[1, 1], [1, 1], [2, 2], [3, 3]]), 4)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            MaxPointsOnALine.solve([
                [0, 1],
                [1, 3],
                [2, 5],
                [3, 7],
                [4, 9],
                [5, 11],
                [6, 13],
                [7, 15],
                [8, 17],
                [9, 19],
                [2, 4],
                [3, 10],
            ]),
            10
        )
    }
}
