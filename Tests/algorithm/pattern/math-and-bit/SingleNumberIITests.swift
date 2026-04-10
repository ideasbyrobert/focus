import XCTest
@testable import AlgorithmMathAndBit

final class SingleNumberIITests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SingleNumberII.solve([2, 2, 3, 2]), 3)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(SingleNumberII.solve([0, 1, 0, 1, 0, 1, 99]), 99)
    }

    func testHandlesNegativeUniqueNumber()
    {
        XCTAssertEqual(SingleNumberII.solve([-2, -2, -2, -7]), -7)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(SingleNumberII.solve([6, 1, 6, 3, 6, 1, 1, 9, 3, 3, 12, 12, 12]), 9)
    }
}
