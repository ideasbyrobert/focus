import XCTest
@testable import AlgorithmArray

final class RotateArrayTests: XCTestCase
{
    func testRotatesCanonicalInput()
    {
        var numbers = [1, 2, 3, 4, 5, 6, 7]

        RotateArray.solve(&numbers, steps: 3)

        XCTAssertEqual(numbers, [5, 6, 7, 1, 2, 3, 4])
    }

    func testHandlesStepCountGreaterThanLength()
    {
        var numbers = [1, 2]

        RotateArray.solve(&numbers, steps: 3)

        XCTAssertEqual(numbers, [2, 1])
    }

    func testLeavesArrayUnchangedForZeroSteps()
    {
        var numbers = [1, 2, 3, 4]

        RotateArray.solve(&numbers, steps: 0)

        XCTAssertEqual(numbers, [1, 2, 3, 4])
    }

    func testHandlesEmptyArray()
    {
        var numbers: [Int] = []

        RotateArray.solve(&numbers, steps: 4)

        XCTAssertTrue(numbers.isEmpty)
    }

    func testRotatesLongInput()
    {
        var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

        RotateArray.solve(&numbers, steps: 5)

        XCTAssertEqual(numbers, [8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7])
    }
}
