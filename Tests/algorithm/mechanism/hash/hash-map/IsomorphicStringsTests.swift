import XCTest
@testable import AlgorithmHash

final class IsomorphicStringsTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(IsomorphicStrings.solve("egg", "add"))
    }

    func testRejectsWhenOneCharacterMapsToTwoDifferentCharacters()
    {
        XCTAssertFalse(IsomorphicStrings.solve("foo", "bar"))
    }

    func testRejectsWhenTwoCharactersMapToTheSameCharacter()
    {
        XCTAssertFalse(IsomorphicStrings.solve("badc", "baba"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(IsomorphicStrings.solve("abcaadeffg", "xyzxxpqrrs"))
        XCTAssertFalse(IsomorphicStrings.solve("abcaadeffg", "xyzxapqrrs"))
    }
}
