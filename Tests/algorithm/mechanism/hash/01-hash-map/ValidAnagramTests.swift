import XCTest
@testable import AlgorithmHash

final class ValidAnagramTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(ValidAnagram.solve("anagram", "nagaram"))
    }

    func testRejectsNonAnagramInput()
    {
        XCTAssertFalse(ValidAnagram.solve("rat", "car"))
    }

    func testRejectsDifferentLengths()
    {
        XCTAssertFalse(ValidAnagram.solve("abc", "ab"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(ValidAnagram.solve("aabbccddeeff", "fedcbafedcba"))
        XCTAssertFalse(ValidAnagram.solve("aabbccddeeff", "fedcbafedcbd"))
    }
}
