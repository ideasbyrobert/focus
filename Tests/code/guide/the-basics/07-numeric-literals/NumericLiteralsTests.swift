import XCTest
@testable import CodeGuideTheBasics

final class NumericLiteralsTests: XCTestCase
{
    func testIntegerLiteralsShareTheSameDecimalValue()
    {
        XCTAssertEqual(decimalInteger, 17)
        XCTAssertEqual(binaryInteger, 17)
        XCTAssertEqual(octalInteger, 17)
        XCTAssertEqual(hexadecimalInteger, 17)
    }

    func testFloatingPointLiteralFormsMatchTheLesson()
    {
        XCTAssertEqual(hexadecimalFloatWithExponent, 168.0, accuracy: 0.00001)
        XCTAssertEqual(decimalFloatWithoutExponent, 0.5, accuracy: 0.00001)
        XCTAssertEqual(decimalFloatWithExponent, 5_000_000.0, accuracy: 0.00001)
        XCTAssertEqual(decimalDouble, 12.1875, accuracy: 0.00001)
        XCTAssertEqual(exponentDouble, 12.1875, accuracy: 0.00001)
        XCTAssertEqual(hexadecimalDouble, 12.1875, accuracy: 0.00001)
    }

    func testReadableFormattingDoesNotChangeUnderlyingValues()
    {
        XCTAssertEqual(paddedDouble, 123.456, accuracy: 0.00001)
        XCTAssertEqual(oneMillion, 1_000_000)
        XCTAssertEqual(justOverOneMillion, 1_000_000.000_000_1, accuracy: 0.0000001)
    }
}
