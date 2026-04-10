import XCTest
@testable import AlgorithmSlidingWindow

final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("abcabcbb"), 3)
    }

    func testHandlesRepeatedSingleCharacterInput()
    {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("bbbbb"), 1)
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve(""), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters.solve("pwwkewxyzabcpq"), 11)
    }
}
