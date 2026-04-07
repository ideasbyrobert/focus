import XCTest
@testable import CodeTour

final class HelloWorldTests: XCTestCase
{
    func testHelloWorldMatchesTheGuidedTourOutput()
    {
        XCTAssertEqual(helloWorld(), "Hello, world!")
    }
}
