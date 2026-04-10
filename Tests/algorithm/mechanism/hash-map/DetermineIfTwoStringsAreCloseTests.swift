import XCTest
@testable import AlgorithmHashMap

final class DetermineIfTwoStringsAreCloseTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(DetermineIfTwoStringsAreClose.solve("abc", "bca"))
    }

    func testRejectsDifferentCharacterSets()
    {
        XCTAssertFalse(DetermineIfTwoStringsAreClose.solve("a", "aa"))
    }

    func testAcceptsWhenCharacterCountsCanBeReassigned()
    {
        XCTAssertTrue(DetermineIfTwoStringsAreClose.solve("cabbba", "abbccc"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(DetermineIfTwoStringsAreClose.solve("aaabbbbccdde", "bbbbaaaeddcc"))
        XCTAssertFalse(DetermineIfTwoStringsAreClose.solve("aaabbbbccdde", "bbbbaaaeddcf"))
    }
}
