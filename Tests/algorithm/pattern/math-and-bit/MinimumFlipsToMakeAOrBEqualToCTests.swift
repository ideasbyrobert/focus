import XCTest
@testable import AlgorithmMathAndBit

final class MinimumFlipsToMakeAOrBEqualToCTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC.solve(2, 6, 5), 3)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC.solve(4, 2, 7), 1)
    }

    func testHandlesNoFlipsNeeded()
    {
        XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC.solve(1, 2, 3), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MinimumFlipsToMakeAOrBEqualToC.solve(29, 42, 15), 2)
    }
}
