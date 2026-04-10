import XCTest
@testable import CodeGuideTheBasics

final class TypeAliasesTests: XCTestCase
{
    func testTypeAliasExposesTheUnderlyingMinimumValue()
    {
        XCTAssertEqual(maxAmplitudeFound, 0)
        XCTAssertTrue(type(of: maxAmplitudeFound) == UInt16.self)
    }
}
