import XCTest
@testable import AlgorithmMathAndBit

final class ReverseBitsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            ReverseBits.solve(0b00000010100101000001111010011100),
            0b00111001011110000010100101000000
        )
    }

    func testHandlesZeroInput()
    {
        XCTAssertEqual(ReverseBits.solve(0), 0)
    }

    func testHandlesSingleLeastSignificantBit()
    {
        XCTAssertEqual(ReverseBits.solve(1), 0b10000000000000000000000000000000)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            ReverseBits.solve(0b11110000101010100110011000001111),
            0b11110000011001100101010100001111
        )
    }
}
