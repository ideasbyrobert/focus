import XCTest
@testable import AlgorithmStackAndQueue

final class BasicCalculatorTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(BasicCalculator.solve("1 + 1"), 2)
    }

    func testHandlesCanonicalMixedExpression()
    {
        XCTAssertEqual(BasicCalculator.solve(" 2-1 + 2 "), 3)
    }

    func testHandlesNestedParentheses()
    {
        XCTAssertEqual(BasicCalculator.solve("(1+(4+5+2)-3)+(6+8)"), 23)
    }

    func testHandlesLeadingUnaryMinus()
    {
        XCTAssertEqual(BasicCalculator.solve("-(3 + (4 + 5))"), -12)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(BasicCalculator.solve("10 - (2 + 3) + (4 - (5 - 6) + 7) - (8 - 9)"), 18)
    }
}
