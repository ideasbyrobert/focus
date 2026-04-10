import XCTest
@testable import AlgorithmBacktracking

final class LetterCombinationsOfAPhoneNumberTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            LetterCombinationsOfAPhoneNumber.solve("23"),
            ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
        )
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve(""), [])
    }

    func testHandlesSingleDigitWithFourLetters()
    {
        XCTAssertEqual(LetterCombinationsOfAPhoneNumber.solve("7"), ["p", "q", "r", "s"])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let combinations = LetterCombinationsOfAPhoneNumber.solve("279")

        XCTAssertEqual(combinations.count, 48)
        XCTAssertEqual(combinations.first, "apw")
        XCTAssertEqual(combinations.last, "csz")
        XCTAssertTrue(combinations.contains("bqx"))
    }
}
