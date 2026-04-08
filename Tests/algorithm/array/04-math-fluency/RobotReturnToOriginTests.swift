import XCTest
@testable import AlgorithmArray

final class RobotReturnToOriginTests: XCTestCase
{
    func testReturnsTrueForCanonicalBalancedMoves()
    {
        XCTAssertTrue(RobotReturnToOrigin.solve("UD"))
    }

    func testReturnsFalseWhenRobotDoesNotReturn()
    {
        XCTAssertFalse(RobotReturnToOrigin.solve("LL"))
    }

    func testHandlesEmptyMoveSequence()
    {
        XCTAssertTrue(RobotReturnToOrigin.solve(""))
    }

    func testIgnoresUnexpectedCharacters()
    {
        XCTAssertTrue(RobotReturnToOrigin.solve("UUDDxxLR"))
    }

    func testHandlesLongDebugFriendlyMoveSequence()
    {
        XCTAssertTrue(RobotReturnToOrigin.solve("UUDDLRLRUDLRUDLR"))
        XCTAssertFalse(RobotReturnToOrigin.solve("UUUDDLRLRUDLRUDL"))
    }
}
