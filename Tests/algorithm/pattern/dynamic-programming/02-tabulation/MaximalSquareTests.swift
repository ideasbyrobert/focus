import XCTest
@testable import AlgorithmDynamicProgramming

final class MaximalSquareTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(
            MaximalSquare.solve([
                ["1", "0", "1", "0", "0"],
                ["1", "0", "1", "1", "1"],
                ["1", "1", "1", "1", "1"],
                ["1", "0", "0", "1", "0"],
            ]),
            4
        )
    }

    func testHandlesAllZeroes()
    {
        XCTAssertEqual(MaximalSquare.solve([["0", "0"], ["0", "0"]]), 0)
    }

    func testHandlesSingleOne()
    {
        XCTAssertEqual(MaximalSquare.solve([["1"]]), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            MaximalSquare.solve([
                ["1", "1", "1", "0", "1"],
                ["1", "1", "1", "1", "1"],
                ["1", "1", "1", "1", "0"],
                ["0", "1", "1", "1", "1"],
                ["1", "1", "1", "1", "1"],
            ]),
            9
        )
    }
}
