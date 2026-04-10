import XCTest
@testable import AlgorithmMathFluency

final class RobotBoundedInCircleTests: XCTestCase
{
    func testHandlesCanonicalBoundedInput()
    {
        XCTAssertTrue(RobotBoundedInCircle.solve("GGLLGG"))
    }

    func testHandlesCanonicalUnboundedInput()
    {
        XCTAssertFalse(RobotBoundedInCircle.solve("GG"))
    }

    func testHandlesDirectionChangeWithoutReturningImmediately()
    {
        XCTAssertTrue(RobotBoundedInCircle.solve("GL"))
    }

    func testHandlesLongDebugFriendlyInstructionSequence()
    {
        XCTAssertTrue(RobotBoundedInCircle.solve("GLGRGLGLGRGRLGLG"))
    }
}
