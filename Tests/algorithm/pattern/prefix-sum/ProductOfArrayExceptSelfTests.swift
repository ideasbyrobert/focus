import XCTest
@testable import AlgorithmPrefixSum

final class ProductOfArrayExceptSelfTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([1, 2, 3, 4]), [24, 12, 8, 6])
    }

    func testHandlesSingleZero()
    {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([1, 2, 0, 4]), [0, 0, 8, 0])
    }

    func testHandlesTwoZeroes()
    {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([0, 2, 0, 4]), [0, 0, 0, 0])
    }

    func testHandlesLongDebugFriendlyArray()
    {
        XCTAssertEqual(ProductOfArrayExceptSelf.solve([2, 3, 1, 4, 2, 5, 1, 6]), [720, 480, 1440, 360, 720, 288, 1440, 240])
    }
}
