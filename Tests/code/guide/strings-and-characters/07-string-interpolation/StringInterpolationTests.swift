import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringInterpolationTests: XCTestCase
{
    func testStringInterpolationIncludesValuesAndExpressions()
    {
        XCTAssertEqual(interpolatedMessage(), "3 times 2.5 is 7.5")
    }

    func testExtendedDelimitersCanPrintInterpolationSyntaxLiterally() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printExtendedDelimiterInterpolationSyntax(multiplier: 3)
        }

        XCTAssertEqual(output, "Write an interpolated string in Swift using \\(multiplier).\n")
    }

    func testExtendedDelimitersCanStillInterpolateWhenEscapedWithMatchingHashes() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printInterpolatedExtendedDelimiterExpression()
        }

        XCTAssertEqual(output, "6 times 7 is 42.\n")
    }
}
