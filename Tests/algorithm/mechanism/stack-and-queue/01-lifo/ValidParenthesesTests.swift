import XCTest
@testable import AlgorithmStackAndQueue

final class ValidParenthesesTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(ValidParentheses.solve("()[]{}"))
    }

    func testRejectsMismatchedClosers()
    {
        XCTAssertFalse(ValidParentheses.solve("(]"))
    }

    func testRejectsUnclosedOpeners()
    {
        XCTAssertFalse(ValidParentheses.solve("(([]"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(ValidParentheses.solve("{[()]}[({})]()(([])){[]}"))
    }
}
