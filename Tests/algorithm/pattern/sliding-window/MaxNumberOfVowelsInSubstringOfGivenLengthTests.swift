import XCTest
@testable import AlgorithmSlidingWindow

final class MaxNumberOfVowelsInSubstringOfGivenLengthTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(MaxNumberOfVowelsInSubstringOfGivenLength.solve("abciiidef", 3), 3)
    }

    func testHandlesInputWithoutVowels()
    {
        XCTAssertEqual(MaxNumberOfVowelsInSubstringOfGivenLength.solve("rhythms", 4), 0)
    }

    func testHandlesWholeStringWindow()
    {
        XCTAssertEqual(MaxNumberOfVowelsInSubstringOfGivenLength.solve("aeiou", 5), 5)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(MaxNumberOfVowelsInSubstringOfGivenLength.solve("aaeiobcdfuuaei", 5), 5)
    }
}
