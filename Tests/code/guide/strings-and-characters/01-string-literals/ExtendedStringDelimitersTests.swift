import XCTest
@testable import CodeGuideStringsAndCharacters

final class ExtendedStringDelimitersTests: XCTestCase
{
    func testExtendedStringDelimitersIncludeTripleQuotationMarks() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printThreeMoreDoubleQuotationMarks()
        }

        XCTAssertEqual(output, "Here are three more double quotes: \"\"\"\n")
    }
}
