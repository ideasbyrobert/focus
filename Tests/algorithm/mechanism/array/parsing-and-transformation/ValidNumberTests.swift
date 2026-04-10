import XCTest
@testable import AlgorithmArray

final class ValidNumberTests: XCTestCase
{
    func testAcceptsCanonicalValidNumbers()
    {
        assertAllValid(["2", "0089", "-0.1", "+3.14", "4.", "-.9"])
    }

    func testAcceptsValidExponentForms()
    {
        assertAllValid(["2e10", "-90E3", "3e+7", "+6e-1", "53.5e93", "-123.456e789"])
    }

    func testRejectsInvalidExponentPlacements()
    {
        assertAllInvalid(["1e", "e3", "99e2.5", "--6", "-+3", "95a54e53"])
    }

    func testRejectsMalformedDecimalForms()
    {
        assertAllInvalid([".", "..", "+.", "46.e.3", "1a", "1 2"])
    }

    func testHandlesSurroundingWhitespaceAndLongerInputs()
    {
        assertAllValid([" 005047e+6 ", " -54.53061 ", " 6e-1 "])
        assertAllInvalid(["  ", " 1e 10 ", " + 3 ", " 99e2.5 "])
    }

    private func assertAllValid(_ values: [String])
    {
        for value in values
        {
            XCTAssertTrue(ValidNumber.solve(value), value)
        }
    }

    private func assertAllInvalid(_ values: [String])
    {
        for value in values
        {
            XCTAssertFalse(ValidNumber.solve(value), value)
        }
    }
}
