import XCTest
@testable import CodeTour

final class MakeArrayTests: XCTestCase
{
    func testMakeArrayRepeatsTheItemTheRequestedNumberOfTimes()
    {
        XCTAssertEqual(makeArray(repeating: "knock", numberOfTimes: 4), ["knock", "knock", "knock", "knock"])
    }
}
