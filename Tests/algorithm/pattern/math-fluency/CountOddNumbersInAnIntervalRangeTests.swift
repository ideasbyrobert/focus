import XCTest
@testable import AlgorithmMathFluency

final class CountOddNumbersInAnIntervalRangeTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(CountOddNumbersInAnIntervalRange.solve(low: 3, high: 7), 3)
    }

    func testHandlesEvenBoundaries()
    {
        XCTAssertEqual(CountOddNumbersInAnIntervalRange.solve(low: 8, high: 10), 1)
    }

    func testHandlesSingleOddValue()
    {
        XCTAssertEqual(CountOddNumbersInAnIntervalRange.solve(low: 5, high: 5), 1)
    }

    func testHandlesLongDebugFriendlyRange()
    {
        XCTAssertEqual(CountOddNumbersInAnIntervalRange.solve(low: 101, high: 123), 12)
    }
}
