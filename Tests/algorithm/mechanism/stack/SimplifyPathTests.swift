import XCTest
@testable import AlgorithmStack

final class SimplifyPathTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SimplifyPath.solve("/home/"), "/home")
    }

    func testCollapsesToRootWhenWalkingAboveRoot()
    {
        XCTAssertEqual(SimplifyPath.solve("/../"), "/")
    }

    func testHandlesDotsAndRepeatedSlashes()
    {
        XCTAssertEqual(SimplifyPath.solve("/a/./b/../../c/"), "/c")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(SimplifyPath.solve("/alpha/beta/../gamma//delta/./epsilon/../../zeta/theta/.."), "/alpha/gamma/zeta")
    }
}
