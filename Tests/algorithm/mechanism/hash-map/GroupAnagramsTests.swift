import XCTest
@testable import AlgorithmHashMap

final class GroupAnagramsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let result = GroupAnagrams.solve(["eat", "tea", "tan", "ate", "nat", "bat"])

        XCTAssertEqual(normalize(result), [["ate", "eat", "tea"], ["bat"], ["nat", "tan"]])
    }

    func testHandlesSingleEmptyString()
    {
        let result = GroupAnagrams.solve([""])

        XCTAssertEqual(normalize(result), [[""]])
    }

    func testHandlesSingleWord()
    {
        let result = GroupAnagrams.solve(["solo"])

        XCTAssertEqual(normalize(result), [["solo"]])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let result = GroupAnagrams.solve(["listen", "silent", "enlist", "stone", "tones", "notes", "below", "elbow", "state", "taste", "cider", "cried"])

        XCTAssertEqual(normalize(result), [["below", "elbow"], ["cider", "cried"], ["enlist", "listen", "silent"], ["notes", "stone", "tones"], ["state", "taste"]])
    }

    private func normalize(_ groups: [[String]]) -> [[String]]
    {
        groups
            .map
            {
                $0.sorted()
            }
            .sorted
            {
                $0.joined(separator: ",") < $1.joined(separator: ",")
            }
    }
}
