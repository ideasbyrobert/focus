import XCTest
@testable import AlgorithmSortAndTwoPointer

final class ValidPalindromeTests: XCTestCase
{
    func testAcceptsCanonicalInput()
    {
        XCTAssertTrue(ValidPalindrome.solve("A man, a plan, a canal: Panama"))
    }

    func testRejectsCanonicalNonPalindrome()
    {
        XCTAssertFalse(ValidPalindrome.solve("race a car"))
    }

    func testAcceptsPunctuationOnlyInput()
    {
        XCTAssertTrue(ValidPalindrome.solve(".,"))
    }

    func testHandlesLongDebugFriendlyInput()
    {
        XCTAssertTrue(ValidPalindrome.solve("Was it a rat I saw? No lemons, no melon. Was it a rat I saw?"))
    }
}
