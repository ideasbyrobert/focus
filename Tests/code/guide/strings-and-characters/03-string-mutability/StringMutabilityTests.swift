import XCTest
@testable import CodeGuideStringsAndCharacters

final class StringMutabilityTests: XCTestCase
{
    func testVariableStringCanBeMutated()
    {
        XCTAssertEqual(mutableStringAfterAppend(), "Horse and carriage")
    }

    func testMutableStringPrintsTheUpdatedValue() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printMutableStringAfterAppend()
        }

        XCTAssertEqual(output, "variableString is now \"Horse and carriage\"\n")
    }
}
