import XCTest
@testable import CodeGuideTheBasics

final class CommentSyntaxTests: XCTestCase
{
    func testSingleLineCommentSyntaxMatchesTheLesson()
    {
        XCTAssertEqual(singleLineCommentSyntax, "// This is a comment.")
    }

    func testMultilineCommentSyntaxMatchesTheLesson()
    {
        XCTAssertEqual(
            multilineCommentSyntax,
            """
            /* This is also a comment
            but is written over multiple lines. */
            """
        )
    }

    func testNestedMultilineCommentSyntaxMatchesTheLesson()
    {
        XCTAssertEqual(
            nestedMultilineCommentSyntax,
            """
            /* This is the start of the first multiline comment.
                /* This is the second, nested multiline comment. */
            This is the end of the first multiline comment. */
            """
        )
    }
}
