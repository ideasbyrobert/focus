import XCTest
@testable import CodeTour

final class OptionalValueTests: XCTestCase
{
    func testOptionalValueCanHoldANoneCase()
    {
        let value: OptionalValue<Int> = .none

        XCTAssertEqual(value, .none)
    }

    func testOptionalValueCanHoldASomeCase()
    {
        let value: OptionalValue<Int> = .some(100)

        XCTAssertEqual(value, .some(100))
    }
}
