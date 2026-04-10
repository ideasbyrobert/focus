import XCTest
@testable import AlgorithmHash

final class LongestConsecutiveSequenceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LongestConsecutiveSequence.solve([100, 4, 200, 1, 3, 2]), 4)
    }

    func testHandlesDuplicates()
    {
        XCTAssertEqual(LongestConsecutiveSequence.solve([1, 2, 0, 1]), 3)
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(LongestConsecutiveSequence.solve([]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LongestConsecutiveSequence.solve([14, 7, 9, 5, 13, 8, 10, 6, 12, 11, 30, 40]), 10)
    }
}
