import XCTest
@testable import AlgorithmArray

final class SignOfTheProductOfAnArrayTests: XCTestCase
{
    func testReturnsPositiveSignForEvenNumberOfNegatives()
    {
        XCTAssertEqual(SignOfTheProductOfAnArray.solve([-1, -2, -3, -4, 3, 2, 1]), 1)
    }

    func testReturnsZeroWhenInputContainsZero()
    {
        XCTAssertEqual(SignOfTheProductOfAnArray.solve([1, 5, 0, 2, -3]), 0)
    }

    func testReturnsNegativeSignForOddNumberOfNegatives()
    {
        XCTAssertEqual(SignOfTheProductOfAnArray.solve([-1, 1, -1, 1, -1]), -1)
    }

    func testHandlesSingleValueInputs()
    {
        XCTAssertEqual(SignOfTheProductOfAnArray.solve([9]), 1)
        XCTAssertEqual(SignOfTheProductOfAnArray.solve([-9]), -1)
    }

    func testHandlesLongMixedInput()
    {
        let numbers = [-2, 3, 5, -7, 11, -13, 17, 19, -23, 29, 31, -37]

        XCTAssertEqual(SignOfTheProductOfAnArray.solve(numbers), -1)
    }
}
