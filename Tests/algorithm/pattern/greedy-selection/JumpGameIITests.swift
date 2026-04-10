import XCTest
@testable import AlgorithmGreedySelection

final class JumpGameIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(JumpGameII.solve([2, 3, 1, 1, 4]), 2)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(JumpGameII.solve([2, 3, 0, 1, 4]), 2)
    }

    func testHandlesSingleElementInput()
    {
        XCTAssertEqual(JumpGameII.solve([0]), 0)
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(JumpGameII.solve([2, 4, 1, 2, 3, 1, 1, 5, 2, 1, 1, 1]), 4)
    }
}
