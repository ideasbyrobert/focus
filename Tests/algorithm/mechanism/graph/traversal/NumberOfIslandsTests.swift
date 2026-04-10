import XCTest
@testable import AlgorithmGraph

final class NumberOfIslandsTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        let grid: [[Character]] = [
            Array("11110"),
            Array("11010"),
            Array("11000"),
            Array("00000"),
        ]

        XCTAssertEqual(NumberOfIslands.solve(grid), 1)
    }

    func testHandlesSeparateDiagonalLandMasses()
    {
        let grid: [[Character]] = [
            Array("100"),
            Array("010"),
            Array("001"),
        ]

        XCTAssertEqual(NumberOfIslands.solve(grid), 3)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let grid: [[Character]] = [
            Array("110001"),
            Array("110101"),
            Array("001101"),
            Array("000001"),
            Array("111000"),
        ]

        XCTAssertEqual(NumberOfIslands.solve(grid), 4)
    }
}
