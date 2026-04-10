import XCTest
@testable import AlgorithmSlidingWindow

final class SubstringWithConcatenationOfAllWordsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SubstringWithConcatenationOfAllWords.solve("barfoothefoobarman", ["foo", "bar"]), [0, 9])
    }

    func testHandlesRepeatedWordRequirement()
    {
        XCTAssertEqual(SubstringWithConcatenationOfAllWords.solve("wordgoodgoodgoodbestword", ["word", "good", "best", "good"]), [8])
    }

    func testHandlesEmptyWordList()
    {
        XCTAssertEqual(SubstringWithConcatenationOfAllWords.solve("anything", []), [])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            SubstringWithConcatenationOfAllWords.solve(
                "lingmindraboofooowingdingbarrwingmonkeypoundcake",
                ["fooo", "barr", "wing", "ding", "wing"]
            ),
            [13]
        )
    }
}
