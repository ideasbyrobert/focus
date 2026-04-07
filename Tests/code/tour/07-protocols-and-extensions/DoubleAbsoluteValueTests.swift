import XCTest
@testable import CodeTour

final class DoubleAbsoluteValueTests: XCTestCase
{
    func testAbsoluteValueLeavesPositiveNumbersAlone()
    {
        XCTAssertEqual(3.5.absoluteValue, 3.5, accuracy: 0.0001)
    }

    func testAbsoluteValueFlipsNegativeNumbers()
    {
        XCTAssertEqual((-3.5).absoluteValue, 3.5, accuracy: 0.0001)
    }
}
