import XCTest
@testable import CodeTour

final class EquilateralTriangleTests: XCTestCase
{
    func testPerimeterReadsFromTheSideLength()
    {
        let triangle = EquilateralTriangle(sideLength: 3.1, name: "triangle")

        XCTAssertEqual(triangle.perimeter, 9.3, accuracy: 0.0001)
    }

    func testPerimeterCanResetTheSideLength()
    {
        let triangle = EquilateralTriangle(sideLength: 3.1, name: "triangle")
        triangle.perimeter = 9.9

        XCTAssertEqual(triangle.sideLength, 3.3, accuracy: 0.0001)
    }
}
