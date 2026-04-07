import XCTest
@testable import CodeTour

final class ExistentialExamplesTests: XCTestCase
{
    func testBoxedProtocolValuesExposeOnlyTheProtocolSurface()
    {
        let a = SimpleClass()
        a.adjust()

        let protocolValue: any ExampleProtocol = a

        XCTAssertEqual(protocolValue.simpleDescription, "A very simple class. Now 100% adjusted.")
    }
}
