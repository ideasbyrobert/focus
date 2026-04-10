import XCTest
@testable import AlgorithmStack

final class BaseballGameTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BaseballGame.solve(["5", "2", "C", "D", "+"]), 30)
    }

    func testHandlesCanonicalMixedPositiveAndNegativeInput()
    {
        XCTAssertEqual(BaseballGame.solve(["5", "-2", "4", "C", "D", "9", "+", "+"]), 27)
    }

    func testHandlesSingleCancellationAndRebuild()
    {
        XCTAssertEqual(BaseballGame.solve(["1", "C", "2", "D", "+"]), 12)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(BaseballGame.solve(["5", "-2", "4", "C", "D", "9", "+", "+", "7", "C", "6", "D", "+"]), 63)
    }
}
