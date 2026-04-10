import XCTest
@testable import CodeGuideTheBasics

final class OptionalsTests: XCTestCase
{
    func testOptionalConversionProducesAnOptionalInt()
    {
        XCTAssertEqual(possibleNumber, "123")
        XCTAssertEqual(convertedNumber, 123)
        XCTAssertEqual(String(describing: type(of: convertedNumber)), "Optional<Int>")
    }

    func testNilExamplesMatchTheLesson()
    {
        let lifecycle = serverResponseCodeLifecycle()

        XCTAssertEqual(lifecycle.initial, 404)
        XCTAssertNil(lifecycle.final)
        XCTAssertNil(defaultSurveyAnswer())
        XCTAssertTrue(convertedNumberContainsAValue())
    }

    func testConvertedNumberPresenceCanBePrinted() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printConvertedNumberPresence()
        }

        XCTAssertEqual(output, "convertedNumber contains some integer value.\n")
    }
}
