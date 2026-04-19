import XCTest
@testable import CodeGuideStringsAndCharacters

final class SpecialCharactersInStringLiteralsTests: XCTestCase
{
    func testEscapedQuotationMarksPrintTheWiseWords() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printWiseWords()
        }

        XCTAssertEqual(output, "\"Imagination is more important than knowledge\" - Einstein\n")
    }

    func testUnicodeScalarEscapesMatchTheLesson()
    {
        let scalars = specialCharacterScalars()

        XCTAssertEqual(scalars.dollarSign, "$")
        XCTAssertEqual(scalars.blackHeart, "♥")
        XCTAssertEqual(scalars.sparklingHeart, "💖")
    }

    func testEscapedTripleQuotationMarksPrintInsideMultilineString() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printThreeDoubleQuotationMarks()
        }

        XCTAssertEqual(
            output,
            "Escaping the first quotation mark \"\"\"\nEscaping all three quotation marks \"\"\"\n"
        )
    }
}
