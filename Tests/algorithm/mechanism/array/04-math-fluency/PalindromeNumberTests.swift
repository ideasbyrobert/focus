import XCTest
@testable import AlgorithmArray

final class PalindromeNumberTests: XCTestCase
{
    func testAcceptsCanonicalPalindrome()
    {
        XCTAssertTrue(PalindromeNumber.solve(121))
    }

    func testRejectsNegativeNumber()
    {
        XCTAssertFalse(PalindromeNumber.solve(-121))
    }

    func testRejectsNumberEndingInZero()
    {
        XCTAssertFalse(PalindromeNumber.solve(10))
    }

    func testHandlesEvenAndOddLengthPalindromes()
    {
        XCTAssertTrue(PalindromeNumber.solve(1221))
        XCTAssertTrue(PalindromeNumber.solve(12321))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(PalindromeNumber.solve(123454321))
        XCTAssertFalse(PalindromeNumber.solve(123456789))
    }
}
