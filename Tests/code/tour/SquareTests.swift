import XCTest
@testable import CodeTour

final class SquareTests: XCTestCase
{
    func testSquareAreaUsesTheSideLength()
    {
        let square = Square(sideLength: 5.2, name: "test square")

        XCTAssertEqual(square.area(), 27.04, accuracy: 0.0001)
    }

    func testSquareDescriptionNamesItsSideLength()
    {
        let square = Square(sideLength: 5.2, name: "test square")

        XCTAssertEqual(square.simpleDescription(), "A square with sides of length 5.2.")
    }
}
