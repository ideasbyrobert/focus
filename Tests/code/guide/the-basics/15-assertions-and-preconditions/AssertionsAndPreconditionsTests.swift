import XCTest
@testable import CodeGuideTheBasics

final class AssertionsAndPreconditionsTests: XCTestCase
{
    func testAssertionConditionAndMessageMatchTheLesson()
    {
        let assertion = ageAssertionCondition(age: -3)

        XCTAssertFalse(assertion.isSatisfied)
        XCTAssertEqual(assertion.message, "A person's age can't be less than zero.")
    }

    func testAssertionWithoutMessageOmitsTheDebugMessage()
    {
        let assertion = ageAssertionWithoutMessage(age: -3)

        XCTAssertFalse(assertion.isSatisfied)
        XCTAssertNil(assertion.message)
    }

    func testInterpolatedAssertionIncludesTheAge()
    {
        let assertion = interpolatedAgeAssertion(age: -3)

        XCTAssertFalse(assertion.isSatisfied)
        XCTAssertEqual(assertion.message, "A person's age can't be less than zero, but value is -3.")
    }

    func testRollerCoasterRideDecisionCapturesEachBranch()
    {
        let olderRider = rollerCoasterRideDecision(age: 12)
        let youngerRider = rollerCoasterRideDecision(age: 8)
        let invalidRider = rollerCoasterRideDecision(age: -3)

        XCTAssertEqual(olderRider.printedMessage, "You can ride the roller-coaster or the ferris wheel.")
        XCTAssertNil(olderRider.assertionFailureMessage)
        XCTAssertEqual(youngerRider.printedMessage, "You can ride the ferris wheel.")
        XCTAssertNil(youngerRider.assertionFailureMessage)
        XCTAssertNil(invalidRider.printedMessage)
        XCTAssertEqual(invalidRider.assertionFailureMessage, "A person's age can't be less than zero.")
    }

    func testPreconditionConditionAndMessageMatchTheLesson()
    {
        let precondition = positiveIndexPrecondition(index: -1)

        XCTAssertFalse(precondition.isSatisfied)
        XCTAssertEqual(precondition.message, "Index must be greater than zero.")
    }
}
