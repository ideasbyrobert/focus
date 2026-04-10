import XCTest
@testable import AlgorithmMathAndBit

final class HammingDistanceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(HammingDistance.solve(1, 4), 2)
    }

    func testHandlesEqualValues()
    {
        XCTAssertEqual(HammingDistance.solve(7, 7), 0)
    }

    func testHandlesPowersOfTwo()
    {
        XCTAssertEqual(HammingDistance.solve(8, 16), 2)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(HammingDistance.solve(0b1010101010101010, 0b1111000011110000), 8)
    }
}
