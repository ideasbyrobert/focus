import XCTest
@testable import AlgorithmStackAndQueue

final class RemovingStarsFromAStringTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(RemovingStarsFromAString.solve("leet**cod*e"), "lecoe")
    }

    func testHandlesCanonicalRemovalToEmpty()
    {
        XCTAssertEqual(RemovingStarsFromAString.solve("erase*****"), "")
    }

    func testHandlesInterleavedRemoval()
    {
        XCTAssertEqual(RemovingStarsFromAString.solve("abc*de**f"), "abf")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(RemovingStarsFromAString.solve("stack**queue***mono*"), "staqumon")
    }
}
