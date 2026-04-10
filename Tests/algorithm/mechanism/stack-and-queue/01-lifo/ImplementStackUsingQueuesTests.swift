import XCTest
@testable import AlgorithmStackAndQueue

final class ImplementStackUsingQueuesTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let stack = MyStack()

        stack.push(1)
        stack.push(2)

        XCTAssertEqual(stack.top(), 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertFalse(stack.empty())
    }

    func testHandlesSingleElementStack()
    {
        let stack = MyStack()

        stack.push(9)

        XCTAssertEqual(stack.top(), 9)
        XCTAssertEqual(stack.pop(), 9)
        XCTAssertTrue(stack.empty())
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let stack = MyStack()

        stack.push(3)
        stack.push(5)
        stack.push(7)

        var results = [stack.top(), stack.pop()]

        stack.push(9)
        results.append(stack.top())
        results.append(stack.pop())
        results.append(stack.pop())
        stack.push(11)
        results.append(stack.pop())
        results.append(stack.pop())

        XCTAssertEqual(results, [7, 7, 9, 9, 5, 11, 3])
        XCTAssertTrue(stack.empty())
    }
}
