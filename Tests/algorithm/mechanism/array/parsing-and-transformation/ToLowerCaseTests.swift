import XCTest
@testable import AlgorithmArray

final class ToLowerCaseTests: XCTestCase
{
    func testConvertsCanonicalInput()
    {
        XCTAssertEqual(ToLowerCase.solve("Hello"), "hello")
    }

    func testLeavesLowercaseInputUnchanged()
    {
        XCTAssertEqual(ToLowerCase.solve("here"), "here")
    }

    func testConvertsUppercaseWord()
    {
        XCTAssertEqual(ToLowerCase.solve("LOVELY"), "lovely")
    }

    func testPreservesDigitsAndPunctuation()
    {
        XCTAssertEqual(ToLowerCase.solve("MiXeD123!"), "mixed123!")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            ToLowerCase.solve("SWIFT DEBUGGING WITH ARRAY TESTS"),
            "swift debugging with array tests"
        )
    }
}
