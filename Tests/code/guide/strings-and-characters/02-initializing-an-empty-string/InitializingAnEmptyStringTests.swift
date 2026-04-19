import XCTest
@testable import CodeGuideStringsAndCharacters

final class InitializingAnEmptyStringTests: XCTestCase
{
    func testEmptyStringLiteralAndInitializerAreEquivalent()
    {
        XCTAssertTrue(emptyStringsAreEquivalent())
    }

    func testEmptyStringCheckPrintsTheLessonMessage() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printEmptyStringMessage()
        }

        XCTAssertEqual(output, "Nothing to see here\n")
    }
}
