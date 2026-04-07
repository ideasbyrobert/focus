import XCTest
@testable import CodeTour

final class ShapeTests: XCTestCase
{
    func testShapeMatchesTheOriginalClassExample()
    {
        let shape = Shape()
        shape.numberOfSides = 7

        XCTAssertEqual(shape.simpleDescription(), "A shape with 7 sides.")
    }
}
