import XCTest
@testable import CodeGuideTheBasics

final class MemorySafetyTests: XCTestCase
{
    func testElementIfValidReturnsTheRequestedValueWhenTheIndexIsInBounds()
    {
        let values = ["Swift", "safely", "accesses", "memory"]

        XCTAssertEqual(elementIfValid(at: 0, in: values), "Swift")
        XCTAssertEqual(elementIfValid(at: 3, in: values), "memory")
    }

    func testElementIfValidReturnsNilForInvalidIndexes()
    {
        let values = [10, 20, 30]

        XCTAssertNil(elementIfValid(at: -1, in: values))
        XCTAssertNil(elementIfValid(at: 3, in: values))
    }

    func testReplacingElementIfValidOnlyMutatesWhenTheIndexIsValid()
    {
        let original = [1, 2, 3, 4]

        XCTAssertEqual(replacingElementIfValid(99, at: 2, in: original), [1, 2, 99, 4])
        XCTAssertEqual(replacingElementIfValid(99, at: 4, in: original), original)
        XCTAssertEqual(replacingElementIfValid(99, at: -1, in: original), original)
    }
}
