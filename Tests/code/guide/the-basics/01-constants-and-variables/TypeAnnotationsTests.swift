import XCTest
@testable import CodeGuideTheBasics

final class TypeAnnotationsTests: XCTestCase
{
    func testAnnotatedWelcomeMessageStoresAString()
    {
        let welcomeMessage = declaredWelcomeMessage()

        XCTAssertEqual(welcomeMessage, "Hello")
        XCTAssertTrue(type(of: welcomeMessage) == String.self)
    }

    func testPrimaryColorChannelsUseDoubleValues()
    {
        let channels = primaryColorChannels()

        XCTAssertEqual(channels.red, 0.0)
        XCTAssertEqual(channels.green, 0.0)
        XCTAssertEqual(channels.blue, 0.0)
        XCTAssertTrue(type(of: channels.red) == Double.self)
    }
}
