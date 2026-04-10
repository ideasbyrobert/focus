import XCTest
@testable import AlgorithmStack

final class EvaluateReversePolishNotationTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["2", "1", "+", "3", "*"]), 9)
    }

    func testHandlesCanonicalDivisionInput()
    {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["4", "13", "5", "/", "+"]), 6)
    }

    func testHandlesLongCanonicalInput()
    {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]), 22)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(EvaluateReversePolishNotation.solve(["5", "1", "2", "+", "4", "*", "+", "3", "-", "6", "2", "/", "+"]), 17)
    }
}
