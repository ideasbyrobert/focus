import XCTest
@testable import CodeGuideStringsAndCharacters

final class UnicodeRepresentationsOfStringsTests: XCTestCase
{
    func testDogStringMatchesTheLessonCharacters()
    {
        XCTAssertEqual(dogString(), "Dog‼🐶")
    }

    func testUTF8RepresentationMatchesTheLesson() async throws
    {
        XCTAssertEqual(dogStringUTF8CodeUnits(), [68, 111, 103, 226, 128, 188, 240, 159, 144, 182])

        let output = try await StandardOutputCapture().capture
        {
            printDogStringUTF8CodeUnits()
        }

        XCTAssertEqual(output, "68 111 103 226 128 188 240 159 144 182 \n")
    }

    func testUTF16RepresentationMatchesTheLesson() async throws
    {
        XCTAssertEqual(dogStringUTF16CodeUnits(), [68, 111, 103, 8252, 55357, 56374])

        let output = try await StandardOutputCapture().capture
        {
            printDogStringUTF16CodeUnits()
        }

        XCTAssertEqual(output, "68 111 103 8252 55357 56374 \n")
    }

    func testUnicodeScalarValuesMatchTheLesson() async throws
    {
        XCTAssertEqual(dogStringUnicodeScalarValues(), [68, 111, 103, 8252, 128054])

        let output = try await StandardOutputCapture().capture
        {
            printDogStringUnicodeScalarValues()
        }

        XCTAssertEqual(output, "68 111 103 8252 128054 \n")
    }

    func testUnicodeScalarsPrintAsCharacters() async throws
    {
        XCTAssertEqual(dogStringUnicodeScalars(), ["D", "o", "g", "‼", "🐶"])

        let output = try await StandardOutputCapture().capture
        {
            printDogStringUnicodeScalars()
        }

        XCTAssertEqual(output, "D \no \ng \n‼ \n🐶 \n")
    }
}
