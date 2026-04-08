import XCTest
@testable import AlgorithmArray

final class KidsWithTheGreatestNumberOfCandiesTests: XCTestCase
{
    func testEvaluatesCanonicalInput()
    {
        let result = KidsWithTheGreatestNumberOfCandies.solve([2, 3, 5, 1, 3], extraCandies: 3)

        XCTAssertEqual(result, [true, true, true, false, true])
    }

    func testHandlesAllEqualValues()
    {
        let result = KidsWithTheGreatestNumberOfCandies.solve([4, 4, 4], extraCandies: 0)

        XCTAssertEqual(result, [true, true, true])
    }

    func testHandlesEmptyInput()
    {
        let result = KidsWithTheGreatestNumberOfCandies.solve([], extraCandies: 5)

        XCTAssertTrue(result.isEmpty)
    }

    func testHandlesMixedInput()
    {
        let result = KidsWithTheGreatestNumberOfCandies.solve([4, 2, 1, 1, 2], extraCandies: 1)

        XCTAssertEqual(result, [true, false, false, false, false])
    }

    func testHandlesLongInput()
    {
        let result = KidsWithTheGreatestNumberOfCandies.solve([1, 3, 2, 5, 4, 7, 6, 3, 2, 1, 8, 5], extraCandies: 2)

        XCTAssertEqual(result, [false, false, false, false, false, true, true, false, false, false, true, false])
    }
}
