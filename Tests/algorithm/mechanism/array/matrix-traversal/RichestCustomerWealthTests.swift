import XCTest
@testable import AlgorithmArray

final class RichestCustomerWealthTests: XCTestCase
{
    func testFindsCanonicalRichestCustomer()
    {
        XCTAssertEqual(RichestCustomerWealth.solve([[1, 2, 3], [3, 2, 1]]), 6)
    }

    func testFindsRichestCustomerAcrossDifferentRowLengths()
    {
        XCTAssertEqual(RichestCustomerWealth.solve([[1, 5], [7, 3], [3, 5]]), 10)
    }

    func testHandlesSingleCustomer()
    {
        XCTAssertEqual(RichestCustomerWealth.solve([[2, 4, 6, 8, 10]]), 30)
    }

    func testHandlesEmptyAccounts()
    {
        XCTAssertEqual(RichestCustomerWealth.solve([]), 0)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(
            RichestCustomerWealth.solve(
                [
                    [1, 2, 3, 4, 5],
                    [6, 1, 1, 1, 1],
                    [2, 2, 8, 2, 2],
                    [9, 0, 0, 0, 0],
                    [4, 4, 4, 4, 4],
                ]
            ),
            20
        )
    }
}
