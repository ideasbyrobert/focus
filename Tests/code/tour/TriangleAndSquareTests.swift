import XCTest
@testable import CodeTour

final class TriangleAndSquareTests: XCTestCase
{
    func testTriangleAndSquareStartWithTheSameSideLength()
    {
        let pair = TriangleAndSquare(size: 10, name: "test shape")

        XCTAssertEqual(pair.square.sideLength, 10, accuracy: 0.0001)
        XCTAssertEqual(pair.triangle.sideLength, 10, accuracy: 0.0001)
    }

    func testReplacingTheSquareUpdatesTheTriangle()
    {
        let pair = TriangleAndSquare(size: 10, name: "test shape")
        pair.square = Square(sideLength: 50, name: "larger square")

        XCTAssertEqual(pair.triangle.sideLength, 50, accuracy: 0.0001)
    }

    func testReplacingTheTriangleUpdatesTheSquare()
    {
        let pair = TriangleAndSquare(size: 10, name: "test shape")
        pair.triangle = EquilateralTriangle(sideLength: 12, name: "larger triangle")

        XCTAssertEqual(pair.square.sideLength, 12, accuracy: 0.0001)
    }
}
