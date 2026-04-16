import XCTest
@testable import CodeGuideBasicOperators

final class AssignmentOperatorTests: XCTestCase
{
    func testAssignmentUpdatesTheStoredValue()
    {
        XCTAssertEqual(assignedValueAfterUpdate(), 10)
    }

    func testTupleDecompositionMatchesTheLesson()
    {
        let values = decomposedTupleValues()

        XCTAssertEqual(values.x, 1)
        XCTAssertEqual(values.y, 2)
    }

    func testVariableTuplePatternCanBeDeclaredAndRead()
    {
        let values = variableTupleValues()

        XCTAssertEqual(values.x, 1)
        XCTAssertEqual(values.y, 2)
    }
}
