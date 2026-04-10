import XCTest
@testable import CodeGuideTheBasics

final class BooleansTests: XCTestCase
{
    func testBooleanConstantsMatchTheLesson()
    {
        XCTAssertTrue(orangesAreOrange)
        XCTAssertFalse(turnipsAreDelicious)
    }

    func testBooleanConditionPrintsTheExpectedBranch() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printTurnipTaste()
        }

        XCTAssertEqual(output, "Eww, turnips are horrible.\n")
    }

    func testBooleanComparisonProducesABoolean()
    {
        XCTAssertTrue(equalsOne(1))
        XCTAssertFalse(equalsOne(2))
    }
}
