import XCTest
@testable import CodeGuideBasicOperators

final class LogicalOperatorsTests: XCTestCase
{
    func testLogicalNotOperatorMatchesTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAccessForNegatedEntry(allowedEntry: false)
        }

        XCTAssertEqual(output, "ACCESS DENIED\n")
    }

    func testLogicalAndOperatorMatchesTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAccessForDoorAndRetina(enteredDoorCode: true, passedRetinaScan: false)
        }

        XCTAssertEqual(output, "ACCESS DENIED\n")
    }

    func testLogicalOrOperatorMatchesTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAccessForDoorKeyOrOverride(hasDoorKey: false, knowsOverridePassword: true)
        }

        XCTAssertEqual(output, "Welcome!\n")
    }

    func testCombinedLogicalOperatorsMatchTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAccessForCombinedOperators(
                enteredDoorCode: true,
                passedRetinaScan: false,
                hasDoorKey: false,
                knowsOverridePassword: true
            )
        }

        XCTAssertEqual(output, "Welcome!\n")
    }

    func testExplicitParenthesesMatchTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAccessForExplicitParentheses(
                enteredDoorCode: true,
                passedRetinaScan: false,
                hasDoorKey: false,
                knowsOverridePassword: true
            )
        }

        XCTAssertEqual(output, "Welcome!\n")
    }
}
