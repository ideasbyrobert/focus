import XCTest
@testable import AlgorithmMathFluency

final class CheckIfItIsAStraightLineTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertTrue(CheckIfItIsAStraightLine.solve([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]]))
    }

    func testRejectsNonLinearCoordinates()
    {
        XCTAssertFalse(CheckIfItIsAStraightLine.solve([[1, 1], [2, 2], [3, 4], [4, 5], [5, 6], [7, 7]]))
    }

    func testHandlesVerticalLine()
    {
        XCTAssertTrue(CheckIfItIsAStraightLine.solve([[2, 1], [2, 4], [2, 7], [2, 10]]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(CheckIfItIsAStraightLine.solve([[0, 1], [1, 3], [2, 5], [3, 7], [4, 9], [5, 11], [6, 13], [7, 15], [8, 17], [9, 19]]))
    }
}
