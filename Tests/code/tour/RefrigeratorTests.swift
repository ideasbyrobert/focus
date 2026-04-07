import XCTest
@testable import CodeTour

final class RefrigeratorTests: XCTestCase
{
    func testContainsReturnsTrueWhenTheFoodIsPresent()
    {
        var refrigerator = Refrigerator(contents: ["milk", "eggs", "leftovers"])

        XCTAssertTrue(refrigerator.contains("eggs"))
        XCTAssertFalse(refrigerator.isOpen)
    }

    func testContainsReturnsFalseWhenTheFoodIsMissing()
    {
        var refrigerator = Refrigerator(contents: ["milk", "eggs", "leftovers"])

        XCTAssertFalse(refrigerator.contains("banana"))
        XCTAssertFalse(refrigerator.isOpen)
    }
}
