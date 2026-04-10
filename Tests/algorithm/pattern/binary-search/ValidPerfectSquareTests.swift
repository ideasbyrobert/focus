import XCTest
@testable import AlgorithmBinarySearch

final class ValidPerfectSquareTests: XCTestCase
{
    func testHandlesCanonicalPerfectSquare()
    {
        XCTAssertTrue(ValidPerfectSquare.solve(16))
    }

    func testRejectsCanonicalNonSquare()
    {
        XCTAssertFalse(ValidPerfectSquare.solve(14))
    }

    func testHandlesSmallValues()
    {
        XCTAssertTrue(ValidPerfectSquare.solve(1))
        XCTAssertTrue(ValidPerfectSquare.solve(0))
        XCTAssertFalse(ValidPerfectSquare.solve(2))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(ValidPerfectSquare.solve(998001))
    }
}
