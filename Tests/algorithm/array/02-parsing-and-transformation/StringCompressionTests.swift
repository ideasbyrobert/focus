import XCTest
@testable import AlgorithmArray

final class StringCompressionTests: XCTestCase
{
    func testCompressesCanonicalInput()
    {
        assertCompression(
            input: "aabbccc",
            expectedLength: 6,
            expectedPrefix: "a2b2c3"
        )
    }

    func testLeavesSingleCharacterUnchanged()
    {
        assertCompression(
            input: "a",
            expectedLength: 1,
            expectedPrefix: "a"
        )
    }

    func testLeavesUniqueCharactersInPlace()
    {
        assertCompression(
            input: "abcdef",
            expectedLength: 6,
            expectedPrefix: "abcdef"
        )
    }

    func testHandlesCountsGreaterThanNine()
    {
        assertCompression(
            input: "aaaaaaaaaaaa",
            expectedLength: 3,
            expectedPrefix: "a12"
        )
    }

    func testHandlesLongDebugFriendlyInput()
    {
        assertCompression(
            input: "aaabbccccdeeefff",
            expectedLength: 11,
            expectedPrefix: "a3b2c4de3f3"
        )
    }

    private func assertCompression(input: String, expectedLength: Int, expectedPrefix: String)
    {
        var characters = Array(input)
        let compressedLength = StringCompression.solve(&characters)

        XCTAssertEqual(compressedLength, expectedLength)
        XCTAssertEqual(String(characters.prefix(compressedLength)), expectedPrefix)
    }
}
