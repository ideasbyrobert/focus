import XCTest
@testable import CodeTour

final class ControlFlowTests: XCTestCase
{
    func testTeamScoreAndScoreDecorationMatchTheGuidedTour()
    {
        let sampleTeamScore = teamScore(for: [75, 43, 103, 87, 12])

        XCTAssertEqual(sampleTeamScore, 11)
        XCTAssertEqual(scoreDecoration(for: sampleTeamScore), "🎉")
    }

    func testGreetingExamplesMatchTheGuidedTour()
    {
        XCTAssertEqual(greeting(for: "John Appleseed"), "Hello, John Appleseed")
        XCTAssertEqual(greeting(for: nil), "Hello!")
        XCTAssertEqual(informalGreeting(nickname: nil, fullName: "John Appleseed"), "Hi John Appleseed")
        XCTAssertNil(nicknameGreeting(nickname: nil))
        XCTAssertEqual(nicknameGreeting(nickname: "Johnny"), "Hey, Johnny")
    }

    func testVegetableSwitchMatchesTheGuidedTour()
    {
        XCTAssertEqual(describeVegetable("red pepper"), "Is it a spicy red pepper?")
        XCTAssertEqual(describeVegetable("celery"), "Add some raisins and make ants on a log.")
        XCTAssertEqual(describeVegetable("cucumber"), "That would make a good tea sandwich.")
    }

    func testLargestNumberTracksBothValueAndKind()
    {
        let result = largestNumber(
            in: [
                "Prime": [2, 3, 5, 7, 11, 13],
                "Fibonacci": [1, 1, 2, 3, 5, 8],
                "Square": [1, 4, 9, 16, 25],
            ]
        )

        XCTAssertEqual(result.kind, "Square")
        XCTAssertEqual(result.value, 25)
    }

    func testLoopExamplesMatchTheGuidedTour()
    {
        XCTAssertEqual(firstPowerOfTwo(startingAt: 2, whileLessThan: 100), 128)
        XCTAssertEqual(repeatedDoubling(startingAt: 2, whileLessThan: 0), 4)
        XCTAssertEqual(totalFromZero(to: 4), 6)
    }
}
