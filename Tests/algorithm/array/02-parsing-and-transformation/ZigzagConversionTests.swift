import XCTest
@testable import AlgorithmArray

final class ZigzagConversionTests: XCTestCase
{
    func testConvertsCanonicalThreeRowInput()
    {
        XCTAssertEqual(ZigzagConversion.solve("PAYPALISHIRING", rowCount: 3), "PAHNAPLSIIGYIR")
    }

    func testConvertsCanonicalFourRowInput()
    {
        XCTAssertEqual(ZigzagConversion.solve("PAYPALISHIRING", rowCount: 4), "PINALSIGYAHRPI")
    }

    func testLeavesSingleRowInputUnchanged()
    {
        XCTAssertEqual(ZigzagConversion.solve("A", rowCount: 1), "A")
    }

    func testLeavesShortInputUnchangedWhenRowCountIsLarge()
    {
        XCTAssertEqual(ZigzagConversion.solve("ABCD", rowCount: 5), "ABCD")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(ZigzagConversion.solve("ABCDEFGHIJKLMNO", rowCount: 5), "AIBHJCGKODFLNEM")
    }
}
