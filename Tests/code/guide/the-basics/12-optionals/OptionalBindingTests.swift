import XCTest
@testable import CodeGuideTheBasics

final class OptionalBindingTests: XCTestCase
{
    func testOptionalBindingPrintsTheConvertedValue() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printActualNumberFromPossibleNumber()
        }

        XCTAssertEqual(output, "The string \"123\" has an integer value of 123\n")
    }

    func testOptionalBindingWithTheSameNamePrintsMyNumber() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printMyNumber()
        }

        XCTAssertEqual(output, "My number is 123\n")
    }

    func testShorthandOptionalBindingPrintsMyNumber() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printMyNumberUsingShorthandOptionalBinding()
        }

        XCTAssertEqual(output, "My number is 123\n")
    }

    func testMultipleOptionalBindingsProduceTheSameResultTwice()
    {
        XCTAssertEqual(
            multipleOptionalBindingOutputs(),
            [
                "4 < 42 < 100",
                "4 < 42 < 100",
            ]
        )
    }

    func testFallbackValueAndForceUnwrappingExamplesMatchTheLesson()
    {
        XCTAssertEqual(fallbackGreeting(name: nil), "Hello, friend!")
        XCTAssertEqual(fallbackGreeting(name: "Taylor"), "Hello, Taylor!")
        XCTAssertEqual(forceUnwrappedNumber(), 123)
        XCTAssertEqual(guardedNumber(), 123)
    }
}
