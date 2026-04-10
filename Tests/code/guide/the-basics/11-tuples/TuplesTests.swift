import XCTest
@testable import CodeGuideTheBasics

final class TuplesTests: XCTestCase
{
    func testTupleExamplesExposeTheExpectedStoredValues()
    {
        XCTAssertEqual(http404Error.0, 404)
        XCTAssertEqual(http404Error.1, "Not Found")
        XCTAssertEqual(http200Status.statusCode, 200)
        XCTAssertEqual(http200Status.description, "OK")
    }

    func testTupleDecompositionMatchesTheLesson() async throws
    {
        let values = decomposedHTTP404Error()

        XCTAssertEqual(values.statusCode, 404)
        XCTAssertEqual(values.statusMessage, "Not Found")

        let output = try await StandardOutputCapture().capture
        {
            printDecomposedHTTP404Error()
        }

        XCTAssertEqual(output, "The status code is 404\nThe status message is Not Found\n")
    }

    func testIgnoredAndIndexedTupleAccessMatchTheLesson() async throws
    {
        XCTAssertEqual(ignoredHTTP404StatusCode(), 404)

        let indexedValues = indexedHTTP404Error()

        XCTAssertEqual(indexedValues.statusCode, 404)
        XCTAssertEqual(indexedValues.statusMessage, "Not Found")

        let ignoredOutput = try await StandardOutputCapture().capture
        {
            printIgnoredHTTP404StatusCode()
        }

        XCTAssertEqual(ignoredOutput, "The status code is 404\n")

        let indexedOutput = try await StandardOutputCapture().capture
        {
            printIndexedHTTP404Error()
        }

        XCTAssertEqual(indexedOutput, "The status code is 404\nThe status message is Not Found\n")
    }

    func testNamedTupleElementsMatchTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printNamedHTTP200Status()
        }

        XCTAssertEqual(output, "The status code is 200\nThe status message is OK\n")
    }
}
