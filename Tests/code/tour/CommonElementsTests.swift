import XCTest
@testable import CodeTour

final class CommonElementsTests: XCTestCase
{
    func testAnyCommonElementsFindsAnOverlap()
    {
        XCTAssertTrue(anyCommonElements([1, 2, 3], [3]))
    }

    func testAnyCommonElementsReturnsFalseWhenThereIsNoOverlap()
    {
        XCTAssertFalse(anyCommonElements([1, 2, 3], [4, 5]))
    }

    func testCommonElementsReturnsTheSharedValues()
    {
        XCTAssertEqual(commonElements([1, 2, 3], [3, 2, 4]), [2, 3])
    }
}
