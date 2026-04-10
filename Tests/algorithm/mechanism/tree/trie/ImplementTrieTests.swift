import XCTest
@testable import AlgorithmTree

final class ImplementTrieTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let trie = Trie()

        trie.insert("apple")

        XCTAssertTrue(trie.search("apple"))
        XCTAssertFalse(trie.search("app"))
        XCTAssertTrue(trie.startsWith("app"))

        trie.insert("app")

        XCTAssertTrue(trie.search("app"))
    }

    func testHandlesMissingPrefixAndWords()
    {
        let trie = Trie()

        trie.insert("cat")
        trie.insert("car")

        XCTAssertFalse(trie.search("cap"))
        XCTAssertFalse(trie.startsWith("dog"))
        XCTAssertTrue(trie.startsWith("ca"))
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let trie = Trie()

        for word in ["tree", "trie", "trip", "trim", "track", "trace"]
        {
            trie.insert(word)
        }

        let results = [
            trie.search("trie"),
            trie.search("tri"),
            trie.startsWith("tri"),
            trie.search("track"),
            trie.startsWith("trac"),
            trie.startsWith("tro"),
        ]

        XCTAssertEqual(results, [true, false, true, true, true, false])
    }
}
