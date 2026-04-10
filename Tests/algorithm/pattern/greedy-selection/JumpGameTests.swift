import XCTest
@testable import AlgorithmGreedySelection

final class JumpGameTests: XCTestCase
{
    func testHandlesCanonicalReachableInput()
    {
        XCTAssertTrue(JumpGame.solve([2, 3, 1, 1, 4]))
    }

    func testHandlesCanonicalUnreachableInput()
    {
        XCTAssertFalse(JumpGame.solve([3, 2, 1, 0, 4]))
    }

    func testHandlesSingleElementInput()
    {
        XCTAssertTrue(JumpGame.solve([0]))
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertTrue(JumpGame.solve([3, 4, 2, 1, 0, 2, 0, 1, 4, 2, 0, 0]))
    }
}
