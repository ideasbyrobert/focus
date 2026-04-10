import XCTest
@testable import AlgorithmArray

final class CanMakeArithmeticProgressionTests: XCTestCase
{
    func testAcceptsCanonicalArithmeticProgression()
    {
        XCTAssertTrue(CanMakeArithmeticProgression.solve([3, 5, 1]))
    }

    func testRejectsCanonicalNonProgression()
    {
        XCTAssertFalse(CanMakeArithmeticProgression.solve([1, 2, 4]))
    }

    func testHandlesNegativeValues()
    {
        XCTAssertTrue(CanMakeArithmeticProgression.solve([-5, -1, -3]))
    }

    func testHandlesLongArithmeticProgression()
    {
        let numbers = [12, 0, 6, 9, 3, 15, -3]

        XCTAssertTrue(CanMakeArithmeticProgression.solve(numbers))
    }

    func testHandlesLongNonProgression()
    {
        let numbers = [1, 4, 7, 10, 13, 16, 20]

        XCTAssertFalse(CanMakeArithmeticProgression.solve(numbers))
    }
}
