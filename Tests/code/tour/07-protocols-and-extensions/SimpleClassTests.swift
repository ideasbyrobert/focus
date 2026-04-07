import XCTest
@testable import CodeTour

final class SimpleClassTests: XCTestCase
{
    func testAdjustExtendsTheDescription()
    {
        let instance = SimpleClass()
        instance.adjust()

        XCTAssertEqual(instance.simpleDescription, "A very simple class. Now 100% adjusted.")
    }

    func testTheAdditionalPropertyRemainsAvailable()
    {
        let instance = SimpleClass()

        XCTAssertEqual(instance.anotherProperty, 69105)
    }
}
