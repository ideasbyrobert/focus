import XCTest
@testable import CodeGuideTheBasics

final class NumericTypeConversionTests: XCTestCase
{
    func testIntegerConversionProducesTheExpectedValue()
    {
        XCTAssertEqual(twoThousandAndOne(), 2001)
        XCTAssertTrue(type(of: twoThousandAndOne()) == UInt16.self)
    }

    func testIntegerAndFloatingPointConversionProducesPi()
    {
        XCTAssertEqual(inferredPi(), 3.14159, accuracy: 0.00001)
        XCTAssertEqual(integerPi(), 3)
    }

    func testFloatingPointToIntegerConversionTruncatesTowardZero()
    {
        XCTAssertEqual(truncatedInteger(4.75), 4)
        XCTAssertEqual(truncatedInteger(-3.9), -3)
    }
}
