import XCTest
@testable import AlgorithmSortingAndTwoPointer

final class IsSubsequenceTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(IsSubsequence.solve("abc", in: "ahbgdc"))
    }

    func testRejectsCanonicalInput()
    {
        XCTAssertFalse(IsSubsequence.solve("axc", in: "ahbgdc"))
    }

    func testAcceptsEmptySubsequence()
    {
        XCTAssertTrue(IsSubsequence.solve("", in: "anything"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(IsSubsequence.solve("stack", in: "s1t2a3c4k5queue"))
        XCTAssertFalse(IsSubsequence.solve("stack", in: "s1t2c3a4k5queue"))
    }
}
