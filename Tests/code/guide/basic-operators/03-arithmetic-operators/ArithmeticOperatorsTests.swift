import XCTest
@testable import CodeGuideBasicOperators

final class ArithmeticOperatorsTests: XCTestCase
{
    func testArithmeticOperatorsMatchTheLesson()
    {
        let results = arithmeticResults()

        XCTAssertEqual(results.sum, 3)
        XCTAssertEqual(results.difference, 2)
        XCTAssertEqual(results.product, 6)
        XCTAssertEqual(results.quotient, 4.0, accuracy: 0.00001)
        XCTAssertEqual(concatenatedGreeting(), "hello, world")
        XCTAssertEqual(positiveRemainder(), 1)
        XCTAssertEqual(negativeRemainder(), -1)
    }

    func testRemainderOutputMatchesTheLesson() async throws
    {
        let output = try await StandardOutputCapture().capture
        {
            printNegativeRemaindersDividedByFour()
        }

        XCTAssertEqual(output, "-1\n0\n-3\n-2\n-1\n0\n")
    }

    func testUnaryOperatorsMatchTheLesson()
    {
        let unaryMinus = unaryMinusResults()
        let unaryPlus = unaryPlusResult()

        XCTAssertEqual(unaryMinus.three, 3)
        XCTAssertEqual(unaryMinus.minusThree, -3)
        XCTAssertEqual(unaryMinus.plusThree, 3)
        XCTAssertEqual(unaryPlus.minusSix, -6)
        XCTAssertEqual(unaryPlus.alsoMinusSix, -6)
    }
}
