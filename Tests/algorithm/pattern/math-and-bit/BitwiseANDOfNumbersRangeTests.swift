import XCTest
@testable import AlgorithmMathAndBit

final class BitwiseANDOfNumbersRangeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BitwiseANDOfNumbersRange.solve(5, 7), 4)
    }

    func testHandlesRangeStartingAtZero()
    {
        XCTAssertEqual(BitwiseANDOfNumbersRange.solve(0, 0), 0)
        XCTAssertEqual(BitwiseANDOfNumbersRange.solve(0, 1), 0)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(BitwiseANDOfNumbersRange.solve(1, 2147483647), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(BitwiseANDOfNumbersRange.solve(600, 631), 576)
    }
}
