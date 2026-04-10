import XCTest
@testable import AlgorithmHash

final class RansomNoteTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(RansomNote.solve("aa", using: "aab"))
    }

    func testRejectsWhenMagazineDoesNotContainEnoughCharacters()
    {
        XCTAssertFalse(RansomNote.solve("aa", using: "ab"))
    }

    func testHandlesEmptyNote()
    {
        XCTAssertTrue(RansomNote.solve("", using: "magazine"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(RansomNote.solve("algorithm", using: "logarithmicmath"))
        XCTAssertFalse(RansomNote.solve("algorithmics", using: "logarithmicmath"))
    }
}
