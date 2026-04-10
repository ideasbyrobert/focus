public enum MaximumTwinSumOfALinkedList
{
    public static func solve(_ head: ListNode?) -> Int
    {
        guard let head else
        {
            return 0
        }

        var slow: ListNode? = head
        var fast: ListNode? = head

        while fast != nil && fast?.next != nil
        {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var reversedSecondHalf = reverse(slow)
        var firstHalf: ListNode? = head
        var maximum = 0

        while reversedSecondHalf != nil
        {
            maximum = max(maximum, (firstHalf?.value ?? 0) + (reversedSecondHalf?.value ?? 0))
            firstHalf = firstHalf?.next
            reversedSecondHalf = reversedSecondHalf?.next
        }

        return maximum
    }

    private static func reverse(_ head: ListNode?) -> ListNode?
    {
        var previous: ListNode?
        var current = head

        while current != nil
        {
            let next = current?.next
            current?.next = previous
            previous = current
            current = next
        }

        return previous
    }
}
