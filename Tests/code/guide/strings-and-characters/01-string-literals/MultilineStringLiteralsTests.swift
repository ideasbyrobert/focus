import XCTest
@testable import CodeGuideStringsAndCharacters

final class MultilineStringLiteralsTests: XCTestCase
{
    func testMultilineQuotationContainsTheExpectedLineFeeds()
    {
        XCTAssertEqual(quotationNewlineCount(), 4)
    }

    func testSingleLineAndMultilineStringsCanBeEqual()
    {
        XCTAssertTrue(singleLineAndMultilineStringsAreEqual())
    }

    func testSoftWrappedMultilineQuotationOmitsEscapedLineBreaks()
    {
        XCTAssertEqual(softWrappedQuotationNewlineCount(), 2)
    }

    func testBlankLinesCanAddLeadingAndTrailingLineFeeds()
    {
        let result = lineBreaksStartAndEndWithLineFeed()

        XCTAssertTrue(result.startsWithLineFeed)
        XCTAssertTrue(result.endsWithLineFeed)
    }

    func testMultilineIndentationKeepsOnlyExtraWhitespace()
    {
        XCTAssertEqual(
            indentedMultilineStringLines(),
            [
                "This line doesn't begin with whitespace.",
                "    This line begins with four spaces.",
                "This line doesn't begin with whitespace.",
            ]
        )
    }
}
