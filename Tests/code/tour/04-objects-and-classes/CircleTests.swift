import XCTest
@testable import CodeTour

final class CircleTests: XCTestCase
{
    func testCircleAreaUsesPiAndTheRadius()
    {
        let circle = Circle(radius: 3, name: "test circle")

        XCTAssertEqual(circle.area(), 28.274333882308138, accuracy: 0.000001)
    }

    func testCircleDescriptionNamesItsRadius()
    {
        let circle = Circle(radius: 3, name: "test circle")

        XCTAssertEqual(circle.simpleDescription(), "A circle with radius 3.0.")
    }
}
