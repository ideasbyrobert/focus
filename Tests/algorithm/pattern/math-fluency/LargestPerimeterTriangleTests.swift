import XCTest
@testable import AlgorithmMathFluency

final class LargestPerimeterTriangleTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LargestPerimeterTriangle.solve([2, 1, 2]), 5)
    }

    func testReturnsZeroWhenNoTriangleExists()
    {
        XCTAssertEqual(LargestPerimeterTriangle.solve([1, 2, 1, 10]), 0)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(LargestPerimeterTriangle.solve([3, 6, 2, 3]), 8)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LargestPerimeterTriangle.solve([1, 1, 2, 3, 5, 8, 13, 21, 34, 34, 34]), 102)
    }
}
