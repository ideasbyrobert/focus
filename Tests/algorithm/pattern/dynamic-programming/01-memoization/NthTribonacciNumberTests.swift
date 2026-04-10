import XCTest
@testable import AlgorithmDynamicProgramming

final class NthTribonacciNumberTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(NthTribonacciNumber.solve(4), 4)
    }

    func testHandlesBaseCases()
    {
        XCTAssertEqual(NthTribonacciNumber.solve(0), 0)
        XCTAssertEqual(NthTribonacciNumber.solve(1), 1)
        XCTAssertEqual(NthTribonacciNumber.solve(2), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(NthTribonacciNumber.solve(15), 3136)
    }

    func testHandlesLargerInput()
    {
        XCTAssertEqual(NthTribonacciNumber.solve(25), 1_389_537)
    }
}
