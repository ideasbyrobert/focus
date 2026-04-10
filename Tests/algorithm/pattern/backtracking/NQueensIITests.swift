import XCTest
@testable import AlgorithmBacktracking

final class NQueensIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(NQueensII.solve(4), 2)
    }

    func testHandlesSingleQueen()
    {
        XCTAssertEqual(NQueensII.solve(1), 1)
    }

    func testHandlesUnsolvableBoardSizes()
    {
        XCTAssertEqual(NQueensII.solve(2), 0)
        XCTAssertEqual(NQueensII.solve(3), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(NQueensII.solve(5), 10)
    }
}
