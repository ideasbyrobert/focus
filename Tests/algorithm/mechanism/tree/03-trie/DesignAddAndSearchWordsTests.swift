import XCTest
@testable import AlgorithmTree

final class DesignAddAndSearchWordsTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let dictionary = WordDictionary()

        dictionary.addWord("bad")
        dictionary.addWord("dad")
        dictionary.addWord("mad")

        XCTAssertFalse(dictionary.search("pad"))
        XCTAssertTrue(dictionary.search("bad"))
        XCTAssertTrue(dictionary.search(".ad"))
        XCTAssertTrue(dictionary.search("b.."))
    }

    func testHandlesExactAndWildcardLengths()
    {
        let dictionary = WordDictionary()

        dictionary.addWord("at")
        dictionary.addWord("and")
        dictionary.addWord("add")

        XCTAssertTrue(dictionary.search("at"))
        XCTAssertTrue(dictionary.search("a.d"))
        XCTAssertFalse(dictionary.search("an"))
        XCTAssertFalse(dictionary.search("...."))
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let dictionary = WordDictionary()

        for word in ["tree", "trie", "trip", "trim", "track", "trace", "trunk"]
        {
            dictionary.addWord(word)
        }

        let results = [
            dictionary.search("tr.e"),
            dictionary.search("tri."),
            dictionary.search("tra.."),
            dictionary.search("tr..z"),
            dictionary.search("t...."),
            dictionary.search("......"),
        ]

        XCTAssertEqual(results, [true, true, true, false, true, false])
    }
}
