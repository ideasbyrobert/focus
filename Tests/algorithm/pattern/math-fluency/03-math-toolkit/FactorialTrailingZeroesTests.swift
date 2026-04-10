import XCTest
@testable import AlgorithmMathFluency

final class FactorialTrailingZeroesTests: XCTestCase
{
    func testHandlesSmallInput()
    {
        XCTAssertEqual(FactorialTrailingZeroes.solve(3), 0)
    }

    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(FactorialTrailingZeroes.solve(5), 1)
    }

    func testHandlesLargerInput()
    {
        XCTAssertEqual(FactorialTrailingZeroes.solve(30), 7)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(FactorialTrailingZeroes.solve(125), 31)
    }
}
