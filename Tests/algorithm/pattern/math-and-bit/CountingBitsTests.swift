import XCTest
@testable import AlgorithmMathAndBit

final class CountingBitsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(CountingBits.solve(2), [0, 1, 1])
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(CountingBits.solve(5), [0, 1, 1, 2, 1, 2])
    }

    func testHandlesZeroInput()
    {
        XCTAssertEqual(CountingBits.solve(0), [0])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(CountingBits.solve(15), [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4])
    }
}
