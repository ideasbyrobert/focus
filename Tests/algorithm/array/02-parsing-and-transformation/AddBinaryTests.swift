import XCTest
@testable import AlgorithmArray

final class AddBinaryTests: XCTestCase
{
    func testAddsCanonicalInput()
    {
        XCTAssertEqual(AddBinary.solve("11", "1"), "100")
    }

    func testAddsSecondCanonicalInput()
    {
        XCTAssertEqual(AddBinary.solve("1010", "1011"), "10101")
    }

    func testHandlesZeroInputs()
    {
        XCTAssertEqual(AddBinary.solve("0", "0"), "0")
    }

    func testHandlesCarryAcrossEntireInput()
    {
        XCTAssertEqual(AddBinary.solve("1111", "1"), "10000")
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertEqual(AddBinary.solve("101010101010", "110011001100"), "1011101110110")
    }
}
