import XCTest
@testable import AlgorithmArray

final class MergeStringsAlternatelyTests: XCTestCase
{
    func testMergesCanonicalEqualLengthInputs()
    {
        XCTAssertEqual(MergeStringsAlternately.solve("abc", "pqr"), "apbqcr")
    }

    func testAppendsRemainingCharactersFromSecondString()
    {
        XCTAssertEqual(MergeStringsAlternately.solve("ab", "pqrs"), "apbqrs")
    }

    func testAppendsRemainingCharactersFromFirstString()
    {
        XCTAssertEqual(MergeStringsAlternately.solve("abcd", "pq"), "apbqcd")
    }

    func testHandlesEmptyFirstString()
    {
        XCTAssertEqual(MergeStringsAlternately.solve("", "xyz"), "xyz")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            MergeStringsAlternately.solve("acegikmoqs", "bdfhjlnprtu"),
            "abcdefghijklmnopqrstu"
        )
    }
}
