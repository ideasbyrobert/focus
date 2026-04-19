import XCTest
@testable import CodeGuideStringsAndCharacters

final class InsertingAndRemovingTests: XCTestCase
{
    func testInsertionsMatchTheLesson()
    {
        let values = welcomeAfterInsertions()

        XCTAssertEqual(values.afterExclamation, "hello!")
        XCTAssertEqual(values.afterThere, "hello there!")
    }

    func testRemovalsMatchTheLesson()
    {
        let values = welcomeAfterRemovals()

        XCTAssertEqual(values.afterRemovingExclamation, "hello there")
        XCTAssertEqual(values.afterRemovingThere, "hello")
    }
}
