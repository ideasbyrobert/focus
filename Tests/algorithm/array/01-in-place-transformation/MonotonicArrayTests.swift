import XCTest
@testable import AlgorithmArray

final class MonotonicArrayTests: XCTestCase
{
    func testAcceptsNonDecreasingArray()
    {
        XCTAssertTrue(MonotonicArray.solve([1, 2, 2, 3]))
    }

    func testAcceptsNonIncreasingArray()
    {
        XCTAssertTrue(MonotonicArray.solve([6, 5, 4, 4]))
    }

    func testRejectsZigzagInput()
    {
        XCTAssertFalse(MonotonicArray.solve([1, 3, 2]))
    }

    func testAcceptsFlatArray()
    {
        XCTAssertTrue(MonotonicArray.solve([7, 7, 7, 7]))
    }

    func testHandlesLongMixedInput()
    {
        let numbers = [10, 9, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4]

        XCTAssertTrue(MonotonicArray.solve(numbers))
        XCTAssertFalse(MonotonicArray.solve([1, 2, 3, 2, 4, 5, 4, 6, 7, 6]))
    }
}
