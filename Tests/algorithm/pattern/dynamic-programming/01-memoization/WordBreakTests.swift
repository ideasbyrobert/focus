import XCTest
@testable import AlgorithmDynamicProgramming

final class WordBreakTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertTrue(WordBreak.solve("leetcode", ["leet", "code"]))
    }

    func testRejectsCanonicalNonBreakableInput()
    {
        XCTAssertFalse(WordBreak.solve("catsandog", ["cats", "dog", "sand", "and", "cat"]))
    }

    func testHandlesRepeatedDictionaryUsage()
    {
        XCTAssertTrue(WordBreak.solve("applepenapple", ["apple", "pen"]))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(WordBreak.solve("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"]))
    }
}
