import XCTest
@testable import AlgorithmDivideAndConquer

final class PowXNTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(PowXN.solve(2, 10), 1024, accuracy: 0.000000000001)
    }

    func testHandlesFractionalBase()
    {
        XCTAssertEqual(PowXN.solve(2.1, 3), 9.261, accuracy: 0.000000000001)
    }

    func testHandlesNegativeExponentAndZeroExponent()
    {
        XCTAssertEqual(PowXN.solve(2, -2), 0.25, accuracy: 0.000000000001)
        XCTAssertEqual(PowXN.solve(5, 0), 1, accuracy: 0.000000000001)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(PowXN.solve(1.5, 12), 129.746337890625, accuracy: 0.000000000001)
    }
}
