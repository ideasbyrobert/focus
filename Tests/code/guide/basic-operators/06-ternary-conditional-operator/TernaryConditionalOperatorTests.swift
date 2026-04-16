import XCTest
@testable import CodeGuideBasicOperators

final class TernaryConditionalOperatorTests: XCTestCase
{
    func testRowHeightUsingTernaryMatchesTheLesson()
    {
        XCTAssertEqual(rowHeightUsingTernary(contentHeight: 40, hasHeader: true), 90)
        XCTAssertEqual(rowHeightUsingTernary(contentHeight: 40, hasHeader: false), 60)
    }

    func testRowHeightUsingConditionalMatchesTheLesson()
    {
        XCTAssertEqual(rowHeightUsingConditional(contentHeight: 40, hasHeader: true), 90)
        XCTAssertEqual(rowHeightUsingConditional(contentHeight: 40, hasHeader: false), 60)
    }
}
