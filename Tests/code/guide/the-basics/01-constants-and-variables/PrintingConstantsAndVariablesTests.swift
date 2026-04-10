import XCTest
@testable import CodeGuideTheBasics

final class PrintingConstantsAndVariablesTests: XCTestCase
{
    func testPrintFriendlyWelcomeMatchesTheLessonOutput() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printFriendlyWelcome()
        }

        XCTAssertEqual(output, "Bonjour!\n")
    }

    func testPrintWithoutNewlineKeepsTheValuesOnOneLine() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printWithoutNewline()
        }

        XCTAssertEqual(output, "1010\n")
    }

    func testStringInterpolationPrintsTheCurrentValue() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printInterpolatedFriendlyWelcome()
        }

        XCTAssertEqual(output, "The current value of friendlyWelcome is Bonjour!\n")
    }
}
