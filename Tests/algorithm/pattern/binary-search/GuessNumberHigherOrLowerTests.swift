import XCTest
@testable import AlgorithmBinarySearch

final class GuessNumberHigherOrLowerTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let target = 6

        let result = GuessNumberHigherOrLower.solve(10)
        {
            guess in

            if guess == target
            {
                return 0
            }

            return guess > target ? -1 : 1
        }

        XCTAssertEqual(result, 6)
    }

    func testHandlesLowerBoundary()
    {
        let target = 1

        let result = GuessNumberHigherOrLower.solve(1)
        {
            guess in

            if guess == target
            {
                return 0
            }

            return guess > target ? -1 : 1
        }

        XCTAssertEqual(result, 1)
    }

    func testHandlesUpperBoundary()
    {
        let target = 100

        let result = GuessNumberHigherOrLower.solve(100)
        {
            guess in

            if guess == target
            {
                return 0
            }

            return guess > target ? -1 : 1
        }

        XCTAssertEqual(result, 100)
    }

    func testHandlesLongDebugFriendlySearchSpace()
    {
        let target = 173

        let result = GuessNumberHigherOrLower.solve(250)
        {
            guess in

            if guess == target
            {
                return 0
            }

            return guess > target ? -1 : 1
        }

        XCTAssertEqual(result, 173)
    }
}
