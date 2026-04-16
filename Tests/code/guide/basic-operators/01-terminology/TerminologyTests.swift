import XCTest
@testable import CodeGuideBasicOperators

final class TerminologyTests: XCTestCase
{
    func testTerminologyExamplesCoverUnaryBinaryAndTernaryOperators()
    {
        XCTAssertEqual(unaryPrefixExample(), -5)
        XCTAssertEqual(binaryInfixExample(), 3)
        XCTAssertEqual(ternaryConditionalExample(isMorning: true), "Good morning")
        XCTAssertEqual(ternaryConditionalExample(isMorning: false), "Hello")
    }
}
