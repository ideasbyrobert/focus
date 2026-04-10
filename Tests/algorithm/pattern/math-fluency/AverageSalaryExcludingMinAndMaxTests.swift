import XCTest
@testable import AlgorithmMathFluency

final class AverageSalaryExcludingMinAndMaxTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(AverageSalaryExcludingMinAndMax.solve([4000, 3000, 1000, 2000]), 2500, accuracy: 0.00001)
    }

    func testHandlesThreeSalaries()
    {
        XCTAssertEqual(AverageSalaryExcludingMinAndMax.solve([1000, 2000, 3000]), 2000, accuracy: 0.00001)
    }

    func testHandlesUnorderedValues()
    {
        XCTAssertEqual(AverageSalaryExcludingMinAndMax.solve([6000, 2000, 9000, 3000, 7000]), 5333.333333333333, accuracy: 0.00001)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(AverageSalaryExcludingMinAndMax.solve([1200, 1800, 2400, 3000, 3600, 4200, 4800, 5400, 6000, 6600]), 3900, accuracy: 0.00001)
    }
}
