import XCTest
@testable import CodeTour

final class NamedShapeTests: XCTestCase
{
    func testSimpleDescriptionReflectsTheNumberOfSides()
    {
        let shape = NamedShape(name: "test shape")
        shape.numberOfSides = 7

        XCTAssertEqual(shape.simpleDescription(), "A shape with 7 sides.")
    }
}
