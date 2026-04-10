import XCTest
@testable import CodeGuideTheBasics

final class ErrorHandlingTheBasicsTests: XCTestCase
{
    func testCanThrowAnErrorThrowsWhenConditionIsTrue()
    {
        XCTAssertThrowsError(try canThrowAnError(condition: true))
        {
            error in

            XCTAssertEqual(error as? SimpleError, .someError)
        }
    }

    func testCanThrowAnErrorReturnsNormallyWhenConditionIsFalse() throws
    {
        XCTAssertNoThrow(try canThrowAnError(condition: false))
    }

    func testRunCanThrowAnErrorMatchesTheLessonBranches()
    {
        XCTAssertEqual(runCanThrowAnError(condition: false), "No Error")
        XCTAssertEqual(runCanThrowAnError(condition: true), "Error")
    }

    func testSandwichHandlingRespondsToDifferentErrorConditions()
    {
        XCTAssertEqual(
            respondToSandwichRequest(hasCleanDishes: false, missingIngredients: []),
            "Wash dishes"
        )
        XCTAssertEqual(
            respondToSandwichRequest(hasCleanDishes: true, missingIngredients: ["Bread", "Cheese"]),
            "Buy [\"Bread\", \"Cheese\"]"
        )
        XCTAssertEqual(
            respondToSandwichRequest(hasCleanDishes: true, missingIngredients: []),
            "Eat sandwich"
        )
    }
}
