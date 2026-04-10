import XCTest
@testable import AlgorithmDynamicProgramming

final class LongestCommonSubsequenceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(LongestCommonSubsequence.solve("abcde", "ace"), 3)
    }

    func testHandlesNoSharedCharacters()
    {
        XCTAssertEqual(LongestCommonSubsequence.solve("abc", "def"), 0)
    }

    func testHandlesIdenticalStrings()
    {
        XCTAssertEqual(LongestCommonSubsequence.solve("abc", "abc"), 3)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(LongestCommonSubsequence.solve("axbxcxdxexf", "abcdef"), 6)
    }
}
