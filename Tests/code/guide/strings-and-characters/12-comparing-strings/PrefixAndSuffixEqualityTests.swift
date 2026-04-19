import XCTest
@testable import CodeGuideStringsAndCharacters

final class PrefixAndSuffixEqualityTests: XCTestCase
{
    func testPrefixComparisonUsesCharactersNotScalars()
    {
        XCTAssertEqual(
            prefixCanonicalEquivalenceMessages(),
            [
                "Has U+00E9 prefix, as expected.",
                "Has U+0065 U+0301 prefix, as expected.",
            ]
        )
    }

    func testSuffixComparisonUsesCharactersNotScalars()
    {
        XCTAssertEqual(
            suffixCanonicalEquivalenceMessages(),
            [
                "Has U+00E9 suffix, as expected.",
                "Has U+0065 U+0301 suffix, as expected.",
            ]
        )
    }

    func testScenePrefixAndSuffixCountsMatchTheLesson()
    {
        let locationCounts = mansionAndCellSceneCounts()

        XCTAssertEqual(actOneSceneCount(), 5)
        XCTAssertEqual(locationCounts.mansion, 6)
        XCTAssertEqual(locationCounts.cell, 2)
    }
}
