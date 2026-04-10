import XCTest
@testable import AlgorithmMathFluency

final class MultiplyStringsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MultiplyStrings.solve("2", "3"), "6")
    }

    func testHandlesCanonicalMultiDigitInput()
    {
        XCTAssertEqual(MultiplyStrings.solve("123", "456"), "56088")
    }

    func testHandlesZeroInput()
    {
        XCTAssertEqual(MultiplyStrings.solve("0", "52"), "0")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MultiplyStrings.solve("123456789", "987654321"), "121932631112635269")
    }
}
