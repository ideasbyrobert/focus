import XCTest
@testable import CodeGuideTheBasics

final class SemicolonExamplesTests: XCTestCase
{
    func testSemicolonAllowsTwoStatementsOnOneLine() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printCatUsingSemicolon()
        }

        XCTAssertEqual(output, "🐱\n")
    }
}
