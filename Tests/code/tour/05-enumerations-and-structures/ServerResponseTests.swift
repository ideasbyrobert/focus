import XCTest
@testable import CodeTour

final class ServerResponseTests: XCTestCase
{
    func testResultSummaryIncludesSunriseAndSunset()
    {
        let response = ServerResponse.result("6:00 am", "8:09 pm")

        XCTAssertEqual(response.summary(), "Sunrise is at 6:00 am and sunset is at 8:09 pm.")
    }

    func testFailureSummaryIncludesTheMessage()
    {
        let response = ServerResponse.failure("Out of cheese.")

        XCTAssertEqual(response.summary(), "Failure... Out of cheese.")
    }

    func testCachedSummaryMakesTheThirdCaseVisible()
    {
        let response = ServerResponse.cached("6:00 am", "8:09 pm")

        XCTAssertEqual(
            response.summary(),
            "Cached sunrise is at 6:00 am and cached sunset is at 8:09 pm."
        )
    }
}
