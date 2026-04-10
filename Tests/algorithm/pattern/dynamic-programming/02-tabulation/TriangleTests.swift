import XCTest
@testable import AlgorithmDynamicProgramming

final class TriangleTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(Triangle.solve([[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]), 11)
    }

    func testHandlesSingleRow()
    {
        XCTAssertEqual(Triangle.solve([[-10]]), -10)
    }

    func testHandlesNegativeValues()
    {
        XCTAssertEqual(Triangle.solve([[1], [2, 3], [1, -1, -3]]), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(Triangle.solve([[5], [9, 6], [4, 6, 8], [0, 7, 1, 5], [4, 2, 8, 3, 7]]), 20)
    }
}
