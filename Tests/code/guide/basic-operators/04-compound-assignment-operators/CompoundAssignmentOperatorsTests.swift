import XCTest
@testable import CodeGuideBasicOperators

final class CompoundAssignmentOperatorsTests: XCTestCase
{
    func testCompoundAssignmentMatchesTheLesson()
    {
        XCTAssertEqual(compoundAssignedValue(), 3)
    }
}
