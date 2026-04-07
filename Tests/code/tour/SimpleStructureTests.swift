import XCTest
@testable import CodeTour

final class SimpleStructureTests: XCTestCase
{
    func testAdjustMarksTheStructureAsAdjusted()
    {
        var instance = SimpleStructure()
        instance.adjust()

        XCTAssertEqual(instance.simpleDescription, "A simple structure (adjusted)")
    }
}
