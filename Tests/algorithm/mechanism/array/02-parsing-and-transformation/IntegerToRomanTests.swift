import XCTest
@testable import AlgorithmArray

final class IntegerToRomanTests: XCTestCase
{
    func testConvertsSimpleInteger()
    {
        XCTAssertEqual(IntegerToRoman.solve(3), "III")
    }

    func testConvertsCanonicalInput()
    {
        XCTAssertEqual(IntegerToRoman.solve(58), "LVIII")
    }

    func testConvertsCanonicalSubtractiveInput()
    {
        XCTAssertEqual(IntegerToRoman.solve(1_994), "MCMXCIV")
    }

    func testHandlesMidRangeSubtractiveCombination()
    {
        XCTAssertEqual(IntegerToRoman.solve(944), "CMXLIV")
    }

    func testHandlesLongDebugFriendlyInteger()
    {
        XCTAssertEqual(IntegerToRoman.solve(3_888), "MMMDCCCLXXXVIII")
    }
}
