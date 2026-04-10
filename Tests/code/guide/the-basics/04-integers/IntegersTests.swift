import XCTest
@testable import CodeGuideTheBasics

final class IntegersTests: XCTestCase
{
    func testIntegerBoundsMatchUInt8Limits()
    {
        XCTAssertEqual(minimumUInt8Value, 0)
        XCTAssertEqual(maximumUInt8Value, 255)
        XCTAssertTrue(type(of: minimumUInt8Value) == UInt8.self)
        XCTAssertTrue(type(of: maximumUInt8Value) == UInt8.self)
    }
}
