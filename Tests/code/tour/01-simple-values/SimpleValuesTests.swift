import XCTest
@testable import CodeTour

final class SimpleValuesTests: XCTestCase
{
    func testConstantAndVariableExampleMatchesTheGuidedTour()
    {
        let values = constantAndVariableValues()

        XCTAssertEqual(values.myVariable, 50)
        XCTAssertEqual(values.myConstant, 42)
    }

    func testNumericExamplesExposeTheExpectedTypesAndValues()
    {
        XCTAssertEqual(implicitInteger, 70)
        XCTAssertEqual(implicitDouble, 70.0)
        XCTAssertEqual(explicitDouble, 70.0)
        XCTAssertEqual(explicitFloat, 4)
    }

    func testStringExamplesMatchTheGuidedTour()
    {
        XCTAssertEqual(widthLabel, "The width is 94")
        XCTAssertEqual(appleSummary, "I have 3 apples.")
        XCTAssertEqual(fruitSummary, "I have 8 pieces of fruit.")
    }

    func testMultilineQuotationContainsTheInterpolatedFruitCount()
    {
        XCTAssertTrue(quotation.contains("I still have 8 pieces of fruit."))
    }

    func testCollectionsExamplesMatchTheGuidedTour()
    {
        XCTAssertEqual(mutatedFruits(), ["strawberries", "grapes", "tangerines", "blueberries"])
        XCTAssertEqual(mutatedOccupations()["Jayne"], "Public Relations")
        XCTAssertTrue(emptyArray().isEmpty)
        XCTAssertTrue(emptyDictionary().isEmpty)
    }
}
