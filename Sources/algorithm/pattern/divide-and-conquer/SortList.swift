public enum SortList
{
    public static func solve(_ head: ListNode?) -> ListNode?
    {
        guard let head, head.next != nil else
        {
            return head
        }

        let middle = split(head)
        let left = solve(head)
        let right = solve(middle)

        return merge(left, right)
    }

    private static func split(_ head: ListNode) -> ListNode?
    {
        var slow: ListNode? = head
        var fast: ListNode? = head
        var previous: ListNode?

        while fast != nil && fast?.next != nil
        {
            previous = slow
            slow = slow?.next
            fast = fast?.next?.next
        }

        previous?.next = nil

        return slow
    }

    private static func merge(_ left: ListNode?, _ right: ListNode?) -> ListNode?
    {
        let dummy = ListNode(0)
        var tail = dummy
        var left = left
        var right = right

        while left != nil && right != nil
        {
            if left!.value <= right!.value
            {
                tail.next = left
                left = left?.next
            }
            else
            {
                tail.next = right
                right = right?.next
            }

            tail = tail.next!
        }

        tail.next = left ?? right

        return dummy.next
    }
}
