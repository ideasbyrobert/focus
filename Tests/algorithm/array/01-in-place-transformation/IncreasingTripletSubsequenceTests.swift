import XCTest
@testable import AlgorithmArray

final class IncreasingTripletSubsequenceTests: XCTestCase
{
    func testFindsTripletInIncreasingInput()
    {
        XCTAssertTrue(IncreasingTripletSubsequence.solve([1, 2, 3, 4, 5]))
    }

    func testReturnsFalseForStrictlyDecreasingInput()
    {
        XCTAssertFalse(IncreasingTripletSubsequence.solve([5, 4, 3, 2, 1]))
    }

    func testFindsTripletAfterResets()
    {
        XCTAssertTrue(IncreasingTripletSubsequence.solve([2, 1, 5, 0, 4, 6]))
    }

    func testHandlesDuplicatesWithoutTriplet()
    {
        XCTAssertFalse(IncreasingTripletSubsequence.solve([1, 1, 1, 1, 1]))
    }

    func testHandlesLongInputWithoutTriplet()
    {
        let numbers = [9, 8, 8, 7, 6, 6, 5, 4, 4, 3, 2, 1]

        XCTAssertFalse(IncreasingTripletSubsequence.solve(numbers))
    }
}
