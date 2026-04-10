import XCTest
@testable import AlgorithmHashMap

final class WordPatternTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(WordPattern.solve("abba", "dog cat cat dog"))
    }

    func testRejectsWhenPatternDoesNotMatchWords()
    {
        XCTAssertFalse(WordPattern.solve("abba", "dog cat cat fish"))
    }

    func testRejectsWhenDifferentPatternCharactersReuseTheSameWord()
    {
        XCTAssertFalse(WordPattern.solve("abba", "dog dog dog dog"))
    }

    func testRejectsWhenPatternAndSentenceLengthsDiffer()
    {
        XCTAssertFalse(WordPattern.solve("abc", "one two"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(WordPattern.solve("abcabc", "red blue green red blue green"))
        XCTAssertFalse(WordPattern.solve("abcabc", "red blue green red green blue"))
    }
}
