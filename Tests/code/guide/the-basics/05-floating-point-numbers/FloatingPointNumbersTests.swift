import XCTest
@testable import CodeGuideTheBasics

final class FloatingPointNumbersTests: XCTestCase
{
    func testFloatingPointExamplesExposeFloatAndDouble()
    {
        XCTAssertEqual(sampleDouble, 3.14159, accuracy: 0.00001)
        XCTAssertEqual(sampleFloat, 3.14159, accuracy: 0.00001)
        XCTAssertTrue(type(of: sampleDouble) == Double.self)
        XCTAssertTrue(type(of: sampleFloat) == Float.self)
    }

    func testFloatingPointSpacingIsLargerForLargeNumbers()
    {
        let spacing = floatSpacingExamples()

        XCTAssertGreaterThan(spacing.largeGap, spacing.smallGap)
        XCTAssertGreaterThan(spacing.largeGap, 0)
        XCTAssertGreaterThan(spacing.smallGap, 0)
    }

    func testFloatingPointSpecialValuesMatchTheSectionDiscussion()
    {
        let values = floatingPointSpecialValues()

        XCTAssertTrue(values.positiveInfinity.isInfinite)
        XCTAssertGreaterThan(values.positiveInfinity, 0)
        XCTAssertTrue(values.negativeInfinity.isInfinite)
        XCTAssertLessThan(values.negativeInfinity, 0)
        XCTAssertTrue(values.isNaN)
    }
}
