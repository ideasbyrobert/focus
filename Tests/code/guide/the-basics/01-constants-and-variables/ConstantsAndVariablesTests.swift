import XCTest
@testable import CodeGuideTheBasics

final class ConstantsAndVariablesTests: XCTestCase
{
    func testDeclaringConstantsAndVariablesMatchesTheLesson()
    {
        XCTAssertEqual(maximumNumberOfLoginAttempts, 10)
        XCTAssertEqual(initialCurrentLoginAttempt, 0)
    }

    func testDeferredInitializationDependsOnTheEnvironment()
    {
        XCTAssertEqual(deferredMaximumNumberOfLoginAttempts(environment: "development"), 100)
        XCTAssertEqual(deferredMaximumNumberOfLoginAttempts(environment: "production"), 10)
    }

    func testMultipleDeclarationsStartAtZero()
    {
        let coordinates = multipleZeroCoordinates()

        XCTAssertEqual(coordinates.x, 0.0)
        XCTAssertEqual(coordinates.y, 0.0)
        XCTAssertEqual(coordinates.z, 0.0)
    }

    func testNamingExamplesAllowUnicodeIdentifiers()
    {
        XCTAssertEqual(π, 3.14159, accuracy: 0.00001)
        XCTAssertEqual(你好, "你好世界")
        XCTAssertEqual(🐶🐮, "dogcow")
    }

    func testFriendlyWelcomeCanChangeBecauseItsAVariable()
    {
        XCTAssertEqual(updatedFriendlyWelcome(), "Bonjour!")
    }
}
