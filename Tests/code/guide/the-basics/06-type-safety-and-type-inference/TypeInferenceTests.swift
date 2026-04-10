import XCTest
@testable import CodeGuideTheBasics

final class TypeInferenceTests: XCTestCase
{
    func testMeaningOfLifeIsInferredAsAnInt()
    {
        XCTAssertEqual(meaningOfLife, 42)
        XCTAssertTrue(type(of: meaningOfLife) == Int.self)
    }

    func testPiIsInferredAsADouble()
    {
        XCTAssertEqual(pi, 3.14159, accuracy: 0.00001)
        XCTAssertTrue(type(of: pi) == Double.self)
    }

    func testAnotherPiIsAlsoInferredAsADouble()
    {
        XCTAssertEqual(anotherPi, 3.14159, accuracy: 0.00001)
        XCTAssertTrue(type(of: anotherPi) == Double.self)
    }
}
