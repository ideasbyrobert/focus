import XCTest
@testable import AlgorithmDynamicProgramming

final class LongestPalindromicSubstringTests: XCTestCase
{
    func testHandlesCanonicalInputWithTwoValidAnswers()
    {
        XCTAssertTrue(["bab", "aba"].contains(LongestPalindromicSubstring.solve("babad")))
    }

    func testHandlesCanonicalEvenLengthInput()
    {
        XCTAssertEqual(LongestPalindromicSubstring.solve("cbbd"), "bb")
    }

    func testHandlesUniformString()
    {
        XCTAssertEqual(LongestPalindromicSubstring.solve("aaaa"), "aaaa")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LongestPalindromicSubstring.solve("forgeeksskeegfor"), "geeksskeeg")
    }
}
