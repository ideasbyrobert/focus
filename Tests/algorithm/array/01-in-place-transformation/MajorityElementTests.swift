import XCTest
@testable import AlgorithmArray

final class MajorityElementTests: XCTestCase
{
    func testFindsMajorityElementInCanonicalInput()
    {
        XCTAssertEqual(MajorityElement.solve([3, 2, 3]), 3)
    }

    func testFindsMajorityElementAcrossLongInput()
    {
        XCTAssertEqual(MajorityElement.solve([2, 2, 1, 1, 1, 2, 2]), 2)
    }

    func testHandlesSingleElementInput()
    {
        XCTAssertEqual(MajorityElement.solve([9]), 9)
    }

    func testHandlesNegativeMajority()
    {
        XCTAssertEqual(MajorityElement.solve([-1, -1, -1, 2, 3, -1, 4, -1, -1]), -1)
    }

    func testHandlesDebugFriendlyLongInput()
    {
        let numbers = [5, 1, 5, 2, 5, 3, 5, 4, 5, 6, 5, 7, 5]

        XCTAssertEqual(MajorityElement.solve(numbers), 5)
    }
}
