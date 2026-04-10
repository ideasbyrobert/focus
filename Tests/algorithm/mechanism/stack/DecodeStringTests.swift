import XCTest
@testable import AlgorithmStack

final class DecodeStringTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(DecodeString.solve("3[a]2[bc]"), "aaabcbc")
    }

    func testHandlesNestedInput()
    {
        XCTAssertEqual(DecodeString.solve("3[a2[c]]"), "accaccacc")
    }

    func testHandlesMultiDigitRepeatCount()
    {
        XCTAssertEqual(DecodeString.solve("10[a]"), "aaaaaaaaaa")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(DecodeString.solve("2[ab3[c]]x3[de]"), "abcccabcccxdedede")
    }
}
