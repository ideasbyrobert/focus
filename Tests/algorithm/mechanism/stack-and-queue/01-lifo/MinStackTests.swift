import XCTest
@testable import AlgorithmStackAndQueue

final class MinStackTests: XCTestCase
{
    func testHandlesCanonicalSequence()
    {
        let stack = MinStack()

        stack.push(-2)
        stack.push(0)
        stack.push(-3)

        XCTAssertEqual(stack.getMin(), -3)

        stack.pop()

        XCTAssertEqual(stack.top(), 0)
        XCTAssertEqual(stack.getMin(), -2)
    }

    func testHandlesDuplicateMinimumValues()
    {
        let stack = MinStack()

        stack.push(2)
        stack.push(2)
        stack.push(1)
        stack.push(1)

        XCTAssertEqual(stack.getMin(), 1)

        stack.pop()

        XCTAssertEqual(stack.getMin(), 1)

        stack.pop()

        XCTAssertEqual(stack.getMin(), 2)
    }

    func testHandlesLongDebugFriendlyOperationSequence()
    {
        let stack = MinStack()

        stack.push(5)
        stack.push(3)
        stack.push(7)
        stack.push(2)
        stack.push(6)

        var results = [stack.getMin(), stack.top()]

        stack.pop()
        results.append(stack.getMin())
        stack.pop()
        results.append(stack.getMin())
        stack.push(1)
        results.append(stack.getMin())
        stack.pop()
        results.append(stack.top())

        XCTAssertEqual(results, [2, 6, 2, 3, 1, 7])
    }
}
