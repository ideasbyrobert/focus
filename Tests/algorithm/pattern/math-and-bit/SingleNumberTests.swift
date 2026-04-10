import XCTest
@testable import AlgorithmMathAndBit

final class SingleNumberTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SingleNumber.solve([2, 2, 1]), 1)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(SingleNumber.solve([4, 1, 2, 1, 2]), 4)
    }

    func testHandlesNegativeUniqueNumber()
    {
        XCTAssertEqual(SingleNumber.solve([-1, 7, 7]), -1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(SingleNumber.solve([14, 3, 9, 14, 3, 8, 9, 11, 8, 5, 11]), 5)
    }
}
