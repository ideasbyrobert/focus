import XCTest
@testable import AlgorithmDynamicProgramming

final class InterleavingStringTests: XCTestCase
{
    func testHandlesCanonicalTrueInput()
    {
        XCTAssertTrue(InterleavingString.solve("aabcc", "dbbca", "aadbbcbcac"))
    }

    func testHandlesCanonicalFalseInput()
    {
        XCTAssertFalse(InterleavingString.solve("aabcc", "dbbca", "aadbbbaccc"))
    }

    func testHandlesEmptyInputs()
    {
        XCTAssertTrue(InterleavingString.solve("", "", ""))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(InterleavingString.solve("acegik", "bdfhjl", "abcdefghijkl"))
    }
}
