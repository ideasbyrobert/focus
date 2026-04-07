import XCTest
@testable import CodeTour

final class FunctionsAndClosuresTests: XCTestCase
{
    func testGreetingExamplesMatchTheGuidedTour()
    {
        XCTAssertEqual(greet(person: "Bob", day: "Tuesday"), "Hello Bob, today is Tuesday.")
        XCTAssertEqual(greet("John", on: "Wednesday"), "Hello John, today is Wednesday.")
        XCTAssertEqual(
            greet(person: "Bob", day: "Tuesday", lunchSpecial: "Soup"),
            "Hello Bob, today is Tuesday, and lunch is Soup."
        )
    }

    func testStatisticsExampleMatchesTheGuidedTour()
    {
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])

        XCTAssertEqual(statistics.min, 3)
        XCTAssertEqual(statistics.max, 100)
        XCTAssertEqual(statistics.sum, 120)
    }

    func testNestedFunctionsAndReturnedFunctionsMatchTheGuidedTour()
    {
        let increment = makeIncrementer()

        XCTAssertEqual(returnFifteen(), 15)
        XCTAssertEqual(increment(7), 8)
    }

    func testFunctionArgumentsAndClosuresMatchTheGuidedTour()
    {
        let numbers = [20, 19, 7, 12]

        XCTAssertTrue(hasAnyMatches(list: numbers, condition: lessThanTen(number:)))
        XCTAssertEqual(mappedNumbers(from: numbers), [60, 57, 21, 36])
        XCTAssertEqual(zeroedOddNumbers(from: numbers), [20, 0, 0, 12])
        XCTAssertEqual(sortedNumbers(from: numbers), [20, 19, 12, 7])
    }
}
