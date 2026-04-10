import XCTest
@testable import AlgorithmBacktracking

final class GenerateParenthesesTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            GenerateParentheses.solve(3),
            ["((()))", "(()())", "(())()", "()(())", "()()()"]
        )
    }

    func testHandlesSinglePair()
    {
        XCTAssertEqual(GenerateParentheses.solve(1), ["()"])
    }

    func testHandlesZeroPairs()
    {
        XCTAssertEqual(GenerateParentheses.solve(0), [""])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let combinations = GenerateParentheses.solve(4)

        XCTAssertEqual(combinations.count, 14)
        XCTAssertTrue(combinations.contains("(((())))"))
        XCTAssertTrue(combinations.contains("()()()()"))
    }
}
