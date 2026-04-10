import XCTest
@testable import AlgorithmDynamicProgramming

final class LongestIncreasingSubsequenceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LongestIncreasingSubsequence.solve([10, 9, 2, 5, 3, 7, 101, 18]), 4)
    }

    func testHandlesAlreadyIncreasingInput()
    {
        XCTAssertEqual(LongestIncreasingSubsequence.solve([1, 2, 3, 4, 5]), 5)
    }

    func testHandlesRepeatedValues()
    {
        XCTAssertEqual(LongestIncreasingSubsequence.solve([7, 7, 7, 7]), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LongestIncreasingSubsequence.solve([3, 4, -1, 0, 6, 2, 3, 5, 7, 8, 1, 9]), 8)
    }
}
