import XCTest
@testable import AlgorithmArray

final class TextJustificationTests: XCTestCase
{
    func testFormatsCanonicalInput()
    {
        XCTAssertEqual(
            TextJustification.solve(
                ["This", "is", "an", "example", "of", "text", "justification."],
                lineWidth: 16
            ),
            [
                "This    is    an",
                "example  of text",
                "justification.  ",
            ]
        )
    }

    func testLeftJustifiesSingleWordLineAndLastLine()
    {
        XCTAssertEqual(
            TextJustification.solve(
                ["What", "must", "be", "acknowledgment", "shall", "be"],
                lineWidth: 16
            ),
            [
                "What   must   be",
                "acknowledgment  ",
                "shall be        ",
            ]
        )
    }

    func testHandlesExactFitLine()
    {
        XCTAssertEqual(
            TextJustification.solve(["fit", "the", "width"], lineWidth: 13),
            ["fit the width"]
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            TextJustification.solve(
                ["Debug", "through", "these", "wide", "aligned", "examples", "with", "steady", "pace"],
                lineWidth: 20
            ),
            [
                "Debug  through these",
                "wide         aligned",
                "examples with steady",
                "pace                ",
            ]
        )
    }

    func testProducesRequestedWidthForEveryLine()
    {
        let words = ["One", "two", "three", "four", "five"]
        let lines = TextJustification.solve(words, lineWidth: 10)

        XCTAssertTrue(lines.allSatisfy { $0.count == 10 })
        XCTAssertEqual(String(lines.joined().filter { $0 != " " }), words.joined())
    }
}
