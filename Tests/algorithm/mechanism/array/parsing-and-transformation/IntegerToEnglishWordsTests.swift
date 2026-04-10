import XCTest
@testable import AlgorithmArray

final class IntegerToEnglishWordsTests: XCTestCase
{
    func testConvertsZero()
    {
        XCTAssertEqual(IntegerToEnglishWords.solve(0), "Zero")
    }

    func testConvertsThreeDigitNumber()
    {
        XCTAssertEqual(IntegerToEnglishWords.solve(123), "One Hundred Twenty Three")
    }

    func testConvertsFiveDigitNumber()
    {
        XCTAssertEqual(
            IntegerToEnglishWords.solve(12_345),
            "Twelve Thousand Three Hundred Forty Five"
        )
    }

    func testConvertsSevenDigitNumber()
    {
        XCTAssertEqual(
            IntegerToEnglishWords.solve(1_234_567),
            "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            IntegerToEnglishWords.solve(2_147_483_647),
            "Two Billion One Hundred Forty Seven Million Four Hundred Eighty Three Thousand Six Hundred Forty Seven"
        )
        XCTAssertEqual(IntegerToEnglishWords.solve(1_000_010), "One Million Ten")
    }
}
