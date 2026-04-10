import XCTest
@testable import AlgorithmArray

final class RomanToIntegerTests: XCTestCase
{
    func testConvertsSimpleRomanNumeral()
    {
        XCTAssertEqual(RomanToInteger.solve("III"), 3)
    }

    func testConvertsCanonicalMixedNumeral()
    {
        XCTAssertEqual(RomanToInteger.solve("LVIII"), 58)
    }

    func testConvertsSubtractiveCanonicalInput()
    {
        XCTAssertEqual(RomanToInteger.solve("MCMXCIV"), 1_994)
    }

    func testHandlesLongDebugFriendlyNumeral()
    {
        XCTAssertEqual(RomanToInteger.solve("MMMDCCCLXXXVIII"), 3_888)
    }

    func testHandlesEmptyAndCompoundSubtractiveCases()
    {
        XCTAssertEqual(RomanToInteger.solve(""), 0)
        XCTAssertEqual(RomanToInteger.solve("XLIV"), 44)
        XCTAssertEqual(RomanToInteger.solve("CMXCIX"), 999)
    }
}
