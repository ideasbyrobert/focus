public enum AddTwoNumbersII
{
    public static func solve(_ left: ListNode?, _ right: ListNode?) -> ListNode?
    {
        var leftStack = values(from: left)
        var rightStack = values(from: right)
        var carry = 0
        var head: ListNode?

        while !leftStack.isEmpty || !rightStack.isEmpty || carry > 0
        {
            let total = (leftStack.popLast() ?? 0) + (rightStack.popLast() ?? 0) + carry
            let node = ListNode(total % 10)
            node.next = head
            head = node
            carry = total / 10
        }

        return head
    }

    private static func values(from head: ListNode?) -> [Int]
    {
        var values: [Int] = []
        var current = head

        while current != nil
        {
            values.append(current!.value)
            current = current?.next
        }

        return values
    }
}
