import XCTest
@testable import CodeGuideBasicOperators

final class ComparisonOperatorsTests: XCTestCase
{
    func testScalarComparisonsMatchTheLesson()
    {
        let results = scalarComparisonResults()

        XCTAssertTrue(results.equal)
        XCTAssertTrue(results.notEqual)
        XCTAssertTrue(results.greaterThan)
        XCTAssertTrue(results.lessThan)
        XCTAssertTrue(results.greaterThanOrEqual)
        XCTAssertFalse(results.lessThanOrEqual)
    }

    func testGreetingBranchMatchesTheLesson()
    {
        XCTAssertEqual(greeting(for: "world"), "hello, world")
        XCTAssertEqual(greeting(for: "Swift"), "I'm sorry Swift, but I don't recognize you")
    }

    func testTupleComparisonsMatchTheLesson()
    {
        let results = tupleComparisonResults()

        XCTAssertTrue(results.zebra)
        XCTAssertTrue(results.bird)
        XCTAssertTrue(results.dog)
        XCTAssertTrue(comparableTupleExample())
    }
}
