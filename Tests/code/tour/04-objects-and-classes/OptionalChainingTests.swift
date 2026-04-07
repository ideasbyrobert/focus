import XCTest
@testable import CodeTour

final class OptionalChainingTests: XCTestCase
{
    func testOptionalChainingReturnsTheSideLengthWhenTheSquareExists()
    {
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let value = sideLength(of: optionalSquare)

        XCTAssertEqual(value, 2.5)
    }

    func testOptionalChainingReturnsNilWhenTheSquareIsMissing()
    {
        XCTAssertNil(sideLength(of: nil))
    }
}
