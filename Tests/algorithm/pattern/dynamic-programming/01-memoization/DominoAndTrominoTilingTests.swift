import XCTest
@testable import AlgorithmDynamicProgramming

final class DominoAndTrominoTilingTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(DominoAndTrominoTiling.solve(3), 5)
    }

    func testHandlesSmallBoards()
    {
        XCTAssertEqual(DominoAndTrominoTiling.solve(1), 1)
        XCTAssertEqual(DominoAndTrominoTiling.solve(2), 2)
    }

    func testHandlesAdditionalBoardWidth()
    {
        XCTAssertEqual(DominoAndTrominoTiling.solve(5), 24)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(DominoAndTrominoTiling.solve(8), 258)
    }
}
