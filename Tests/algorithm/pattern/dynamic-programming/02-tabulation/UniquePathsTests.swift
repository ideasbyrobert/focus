import XCTest
@testable import AlgorithmDynamicProgramming

final class UniquePathsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(UniquePaths.solve(3, 7), 28)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(UniquePaths.solve(3, 2), 3)
    }

    func testHandlesSingleRowOrColumn()
    {
        XCTAssertEqual(UniquePaths.solve(1, 8), 1)
        XCTAssertEqual(UniquePaths.solve(6, 1), 1)
    }

    func testHandlesLongDebugFriendlyGrid()
    {
        XCTAssertEqual(UniquePaths.solve(8, 10), 11_440)
    }
}
