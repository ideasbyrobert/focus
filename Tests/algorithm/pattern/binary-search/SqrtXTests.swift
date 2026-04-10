import XCTest
@testable import AlgorithmBinarySearch

final class SqrtXTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(SqrtX.solve(4), 2)
    }

    func testHandlesCanonicalFlooringCase()
    {
        XCTAssertEqual(SqrtX.solve(8), 2)
    }

    func testHandlesSmallValues()
    {
        XCTAssertEqual(SqrtX.solve(0), 0)
        XCTAssertEqual(SqrtX.solve(1), 1)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(SqrtX.solve(2147395599), 46339)
    }
}
