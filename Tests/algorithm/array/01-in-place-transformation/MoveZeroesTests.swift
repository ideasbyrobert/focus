import XCTest
@testable import AlgorithmArray

final class MoveZeroesTests: XCTestCase
{
    func testMovesZeroesForCanonicalInput()
    {
        var numbers = [0, 1, 0, 3, 12]

        MoveZeroes.solve(&numbers)

        XCTAssertEqual(numbers, [1, 3, 12, 0, 0])
    }

    func testKeepsRelativeOrderOfNonZeroes()
    {
        var numbers = [4, 0, 5, 0, 3, 0, 2, 1]

        MoveZeroes.solve(&numbers)

        XCTAssertEqual(numbers, [4, 5, 3, 2, 1, 0, 0, 0])
    }

    func testHandlesAllZeroes()
    {
        var numbers = [0, 0, 0, 0]

        MoveZeroes.solve(&numbers)

        XCTAssertEqual(numbers, [0, 0, 0, 0])
    }

    func testHandlesNoZeroes()
    {
        var numbers = [1, 2, 3, 4, 5]

        MoveZeroes.solve(&numbers)

        XCTAssertEqual(numbers, [1, 2, 3, 4, 5])
    }

    func testHandlesLongMixedInput()
    {
        var numbers = [0, 7, 0, 2, 9, 0, 4, 0, 6, 1, 0, 8, 3]

        MoveZeroes.solve(&numbers)

        XCTAssertEqual(numbers, [7, 2, 9, 4, 6, 1, 8, 3, 0, 0, 0, 0, 0])
    }
}
