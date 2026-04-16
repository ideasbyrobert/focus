import XCTest
@testable import CodeGuideBasicOperators

final class RangeOperatorsTests: XCTestCase
{
    func testClosedRangeExamplesMatchTheLesson() async throws
    {
        XCTAssertEqual(closedRangeTypeName(), "ClosedRange<Int>")
        XCTAssertEqual(singleValueClosedRange(), 1...1)
        XCTAssertNil(closedRangeValidationMessage(lowerBound: 1, upperBound: 1))
        XCTAssertEqual(closedRangeValidationMessage(lowerBound: 1, upperBound: 0), "lowerBound <= upperBound")

        let output = try await StandardOutputCapture().capture
        {
            printClosedRangeMultiplicationTable()
        }

        XCTAssertEqual(
            output,
            "1 times 5 is 5\n2 times 5 is 10\n3 times 5 is 15\n4 times 5 is 20\n5 times 5 is 25\n"
        )
    }

    func testHalfOpenRangeExamplesMatchTheLesson() async throws
    {
        XCTAssertEqual(halfOpenRangeTypeName(), "Range<Int>")
        XCTAssertTrue(emptyHalfOpenRange().isEmpty)
        XCTAssertNil(halfOpenRangeValidationMessage(lowerBound: 1, upperBound: 1))
        XCTAssertEqual(halfOpenRangeValidationMessage(lowerBound: 1, upperBound: 0), "lowerBound <= upperBound")

        let output = try await StandardOutputCapture().capture
        {
            printNamesUsingHalfOpenRange()
        }

        XCTAssertEqual(
            output,
            "Person 1 is called Anna\nPerson 2 is called Alex\nPerson 3 is called Brian\nPerson 4 is called Jack\n"
        )
    }

    func testOneSidedRangeExamplesMatchTheLesson() async throws
    {
        let namesFromIndexTwo = try await StandardOutputCapture().capture
        {
            printNamesFromIndexTwo()
        }
        let namesThroughIndexTwo = try await StandardOutputCapture().capture
        {
            printNamesThroughIndexTwo()
        }
        let namesBeforeIndexTwo = try await StandardOutputCapture().capture
        {
            printNamesBeforeIndexTwo()
        }
        let results = oneSidedRangeContainsResults()

        XCTAssertEqual(namesFromIndexTwo, "Brian\nJack\n")
        XCTAssertEqual(namesThroughIndexTwo, "Anna\nAlex\nBrian\n")
        XCTAssertEqual(namesBeforeIndexTwo, "Anna\nAlex\n")
        XCTAssertEqual(oneSidedRangeTypeName(), "PartialRangeThrough<Int>")
        XCTAssertFalse(results.containsSeven)
        XCTAssertTrue(results.containsFour)
        XCTAssertTrue(results.containsMinusOne)
    }
}
