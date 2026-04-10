import XCTest
@testable import AlgorithmLinkedList

final class CopyListWithRandomPointerTests: XCTestCase
{
    func testCopiesCanonicalRandomPointerList()
    {
        let original = buildRandomList([(7, nil), (13, 0), (11, 4), (10, 2), (1, 0)])
        let copy = CopyListWithRandomPointer.solve(original)

        XCTAssertEqual(randomListSnapshot(from: copy), ["7:nil", "13:0", "11:4", "10:2", "1:0"])

        let originalNodes = randomListNodes(from: original)
        let copyNodes = randomListNodes(from: copy)

        XCTAssertEqual(originalNodes.count, copyNodes.count)

        for index in originalNodes.indices
        {
            XCTAssertFalse(originalNodes[index] === copyNodes[index])
        }
    }

    func testHandlesEmptyList()
    {
        XCTAssertNil(CopyListWithRandomPointer.solve(nil))
    }

    func testCopiesSingleNodeWithSelfRandomPointer()
    {
        let original = buildRandomList([(1, 0)])
        let copy = CopyListWithRandomPointer.solve(original)

        XCTAssertEqual(randomListSnapshot(from: copy), ["1:0"])
        XCTAssertFalse(randomListNodes(from: original).first === randomListNodes(from: copy).first)
    }

    func testCopiedListRemainsIndependentFromOriginal()
    {
        let original = buildRandomList([(1, 1), (2, 0), (3, 1)])
        let copy = CopyListWithRandomPointer.solve(original)

        original?.value = 99
        original?.next?.random = nil

        XCTAssertEqual(randomListSnapshot(from: copy), ["1:1", "2:0", "3:1"])
    }

    func testHandlesLongDebugFriendlyInput()
    {
        let original = buildRandomList([(5, 2), (1, 4), (7, nil), (3, 0), (9, 6), (2, 1), (8, 3), (4, 5)])
        let copy = CopyListWithRandomPointer.solve(original)
        let originalNodes = randomListNodes(from: original)
        let copyNodes = randomListNodes(from: copy)

        XCTAssertEqual(randomListSnapshot(from: copy), ["5:2", "1:4", "7:nil", "3:0", "9:6", "2:1", "8:3", "4:5"])

        for copyNode in copyNodes
        {
            if let random = copyNode.random
            {
                XCTAssertTrue(copyNodes.contains { $0 === random })
                XCTAssertFalse(originalNodes.contains { $0 === random })
            }
        }
    }
}
