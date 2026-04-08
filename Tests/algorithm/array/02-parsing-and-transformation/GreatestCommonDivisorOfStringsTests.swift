import XCTest
@testable import AlgorithmArray

final class GreatestCommonDivisorOfStringsTests: XCTestCase
{
    func testFindsCanonicalDivisor()
    {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.solve("ABCABC", "ABC"), "ABC")
    }

    func testFindsLongerCommonDivisor()
    {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.solve("ABABAB", "ABAB"), "AB")
    }

    func testReturnsEmptyStringWhenThereIsNoSharedPattern()
    {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.solve("LEET", "CODE"), "")
    }

    func testHandlesRepeatedSingleCharacterPattern()
    {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.solve("AAAAAA", "AAA"), "AAA")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(GreatestCommonDivisorOfStrings.solve("XYZXYZXYZXYZ", "XYZXYZ"), "XYZXYZ")
    }
}
