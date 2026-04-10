import XCTest
@testable import AlgorithmSortAndInterval

final class MinimumNumberOfArrowsToBurstBalloonsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons.solve([[10, 16], [2, 8], [1, 6], [7, 12]]), 2)
    }

    func testHandlesSeparatedBalloons()
    {
        XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons.solve([[1, 2], [3, 4], [5, 6], [7, 8]]), 4)
    }

    func testHandlesFullyOverlappingBalloons()
    {
        XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons.solve([[1, 10], [2, 9], [3, 8], [4, 7]]), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MinimumNumberOfArrowsToBurstBalloons.solve([[1, 6], [2, 8], [7, 12], [10, 16], [17, 20], [18, 22], [23, 27], [24, 26], [30, 35]]), 5)
    }
}
