import XCTest
@testable import CodeTour

final class IntExampleProtocolTests: XCTestCase
{
    func testIntGainsAProtocolDescriptionAndAdjustment()
    {
        var number = 7

        XCTAssertEqual(number.simpleDescription, "The number 7")

        number.adjust()

        XCTAssertEqual(number, 49)
    }
}
