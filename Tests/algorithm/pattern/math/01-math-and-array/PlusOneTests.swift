import XCTest
@testable import AlgorithmMathAndArray

final class PlusOneTests: XCTestCase
{
    func testIncrementsCanonicalDigits()
    {
        XCTAssertEqual(PlusOne.solve([1, 2, 3]), [1, 2, 4])
    }

    func testHandlesTrailingCarry()
    {
        XCTAssertEqual(PlusOne.solve([4, 3, 2, 1]), [4, 3, 2, 2])
    }

    func testHandlesAllNines()
    {
        XCTAssertEqual(PlusOne.solve([9, 9, 9]), [1, 0, 0, 0])
    }

    func testHandlesEmptyInput()
    {
        XCTAssertEqual(PlusOne.solve([]), [1])
    }

    func testHandlesLongDebugFriendlyDigits()
    {
        XCTAssertEqual(
            PlusOne.solve([1, 9, 9, 9, 9, 9, 9, 9, 9, 9]),
            [2, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        )
    }
}
