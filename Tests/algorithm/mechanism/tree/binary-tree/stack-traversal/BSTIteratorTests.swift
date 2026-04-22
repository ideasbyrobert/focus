import XCTest
@testable import AlgorithmRecursionAndBinaryTree

final class BSTIteratorTests: XCTestCase
{
    func testHandlesEmptyTree()
    {
        let iterator = BSTIterator(nil)

        XCTAssertFalse(iterator.hasNext())
    }

    func testHandlesCanonicalSequence()
    {
        let iterator = BSTIterator(buildTree([7, 3, 15, nil, nil, 9, 20]))

        let results = [
            iterator.next(),
            iterator.next(),
            iterator.hasNext() ? 1 : 0,
            iterator.next(),
            iterator.hasNext() ? 1 : 0,
            iterator.next(),
            iterator.hasNext() ? 1 : 0,
            iterator.next(),
            iterator.hasNext() ? 1 : 0,
        ]

        XCTAssertEqual(results, [3, 7, 1, 9, 1, 15, 1, 20, 0])
    }

    func testHandlesSingleNode()
    {
        let iterator = BSTIterator(buildTree([1]))

        XCTAssertTrue(iterator.hasNext())
        XCTAssertEqual(iterator.next(), 1)
        XCTAssertFalse(iterator.hasNext())
    }

    func testHandlesLeftHeavyTree()
    {
        let iterator = BSTIterator(buildTree([3, 2, nil, 1]))
        var values: [Int] = []

        while iterator.hasNext()
        {
            values.append(iterator.next())
        }

        XCTAssertEqual(values, [1, 2, 3])
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let iterator = BSTIterator(buildTree([8, 4, 12, 2, 6, 10, 14, 1, 3, 5, 7, 9, 11, 13, 15]))
        var values: [Int] = []

        while iterator.hasNext()
        {
            values.append(iterator.next())
        }

        XCTAssertEqual(values, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    }
}
