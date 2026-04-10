import XCTest
@testable import AlgorithmGraph

final class WordLadderTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            WordLadder.solve("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]),
            5
        )
    }

    func testReturnsZeroWhenEndWordIsMissing()
    {
        XCTAssertEqual(
            WordLadder.solve("hit", "cog", ["hot", "dot", "dog", "lot", "log"]),
            0
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let words = ["cord", "card", "ward", "warm", "core", "care", "worm", "word", "cold"]

        XCTAssertEqual(WordLadder.solve("cold", "warm", words), 5)
    }
}
