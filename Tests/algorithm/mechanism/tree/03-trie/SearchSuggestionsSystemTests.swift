import XCTest
@testable import AlgorithmTree

final class SearchSuggestionsSystemTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let products = ["mobile", "mouse", "moneypot", "monitor", "mousepad"]

        XCTAssertEqual(
            SearchSuggestionsSystem.solve(products, "mouse"),
            [
                ["mobile", "moneypot", "monitor"],
                ["mobile", "moneypot", "monitor"],
                ["mouse", "mousepad"],
                ["mouse", "mousepad"],
                ["mouse", "mousepad"],
            ]
        )
    }

    func testHandlesPrefixesWithoutMatches()
    {
        XCTAssertEqual(
            SearchSuggestionsSystem.solve(["havana"], "tatiana"),
            [[], [], [], [], [], [], []]
        )
    }

    func testHandlesLongDebugFriendlyCatalog()
    {
        let products = ["bag", "baggage", "banner", "box", "cloths", "bags", "banana", "band", "bandana", "bar", "bat"]

        XCTAssertEqual(
            SearchSuggestionsSystem.solve(products, "ban"),
            [
                ["bag", "baggage", "bags"],
                ["bag", "baggage", "bags"],
                ["banana", "band", "bandana"],
            ]
        )
    }
}
