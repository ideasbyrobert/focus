import XCTest
@testable import AlgorithmDynamicProgramming

final class EditDistanceTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(EditDistance.solve("horse", "ros"), 3)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(EditDistance.solve("intention", "execution"), 5)
    }

    func testHandlesEmptyStringTransitions()
    {
        XCTAssertEqual(EditDistance.solve("", "abc"), 3)
        XCTAssertEqual(EditDistance.solve("abc", ""), 3)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(EditDistance.solve("saturday", "sunday"), 3)
    }
}
