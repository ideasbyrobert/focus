import XCTest
@testable import AlgorithmTree

final class ValidateBSTTests: XCTestCase
{
    func testHandlesValidCanonicalInput()
    {
        let root = buildTree([2, 1, 3])

        XCTAssertTrue(ValidateBST.solve(root))
    }

    func testRejectsDeeperViolation()
    {
        let root = buildTree([5, 1, 4, nil, nil, 3, 6])

        XCTAssertFalse(ValidateBST.solve(root))
    }

    func testRejectsDuplicateValues()
    {
        let root = buildTree([2, 2, 2])

        XCTAssertFalse(ValidateBST.solve(root))
    }

    func testHandlesLongDebugFriendlyTree()
    {
        let root = buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15])

        XCTAssertTrue(ValidateBST.solve(root))
    }
}
