import XCTest
@testable import CodeGuideBasicOperators

final class NilCoalescingOperatorTests: XCTestCase
{
    func testNilCoalescingMatchesTheTernaryShorthand()
    {
        XCTAssertEqual(fallbackValueUsingTernary(optionalValue: nil, defaultValue: 42), 42)
        XCTAssertEqual(fallbackValueUsingNilCoalescing(optionalValue: nil, defaultValue: 42), 42)
        XCTAssertEqual(fallbackValueUsingTernary(optionalValue: 7, defaultValue: 42), 7)
        XCTAssertEqual(fallbackValueUsingNilCoalescing(optionalValue: 7, defaultValue: 42), 7)
    }

    func testColorSelectionMatchesTheLesson()
    {
        XCTAssertEqual(colorNameToUse(userDefinedColorName: nil), "red")
        XCTAssertEqual(colorNameToUse(userDefinedColorName: "green"), "green")
    }
}
