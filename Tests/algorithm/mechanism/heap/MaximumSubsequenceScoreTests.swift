import XCTest
@testable import AlgorithmHeap

final class MaximumSubsequenceScoreTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            MaximumSubsequenceScore.solve([1, 3, 3, 2], [2, 1, 3, 4], subsequenceLength: 3),
            12
        )
    }

    func testHandlesSingleElementSubsequence()
    {
        XCTAssertEqual(
            MaximumSubsequenceScore.solve([4, 2, 3, 1, 1], [7, 5, 10, 9, 6], subsequenceLength: 1),
            30
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            MaximumSubsequenceScore.solve([5, 1, 3, 7, 4, 6], [4, 8, 2, 5, 3, 6], subsequenceLength: 3),
            72
        )
    }
}
