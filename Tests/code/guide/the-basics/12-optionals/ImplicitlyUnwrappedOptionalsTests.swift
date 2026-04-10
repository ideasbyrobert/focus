import XCTest
@testable import CodeGuideTheBasics

final class ImplicitlyUnwrappedOptionalsTests: XCTestCase
{
    func testImplicitlyUnwrappedOptionalValuesMatchTheLesson()
    {
        XCTAssertEqual(possibleString, "An optional string.")
        XCTAssertEqual(forcedString, "An optional string.")
        XCTAssertEqual(assumedString, "An implicitly unwrapped optional string.")
        XCTAssertEqual(implicitString, "An implicitly unwrapped optional string.")
        XCTAssertEqual(optionalString, "An implicitly unwrapped optional string.")
        XCTAssertEqual(String(describing: type(of: optionalString)), "Optional<String>")
    }

    func testImplicitlyUnwrappedOptionalCanBeCheckedForNil() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printAssumedStringIfPresent()
        }

        XCTAssertEqual(output, "An implicitly unwrapped optional string.\n")
    }

    func testImplicitlyUnwrappedOptionalCanBeUsedWithOptionalBinding() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printDefiniteStringFromAssumedString()
        }

        XCTAssertEqual(output, "An implicitly unwrapped optional string.\n")
    }
}
