import XCTest
@testable import AlgorithmBinarySearch

final class KokoEatingBananasTests: XCTestCase
{
    func testHandlesCanonicalInput()
    {
        XCTAssertEqual(KokoEatingBananas.solve([3, 6, 7, 11], 8), 4)
    }

    func testHandlesSecondCanonicalInput()
    {
        XCTAssertEqual(KokoEatingBananas.solve([30, 11, 23, 4, 20], 5), 30)
    }

    func testHandlesThirdCanonicalInput()
    {
        XCTAssertEqual(KokoEatingBananas.solve([30, 11, 23, 4, 20], 6), 23)
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(KokoEatingBananas.solve([12, 15, 19, 24, 31, 38, 44, 51, 63, 72], 20), 24)
    }
}
