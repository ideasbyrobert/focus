import XCTest
@testable import AlgorithmMathAndBit

final class NumberOf1BitsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(NumberOf1Bits.solve(0b00000000000000000000000000001011), 3)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(NumberOf1Bits.solve(0b00000000000000000000000010000000), 1)
    }

    func testHandlesAllBitsSet()
    {
        XCTAssertEqual(NumberOf1Bits.solve(UInt32.max), 32)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(NumberOf1Bits.solve(0b10110100101101001011010010110100), 16)
    }
}
