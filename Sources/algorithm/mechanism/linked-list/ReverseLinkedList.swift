public enum ReverseLinkedList
{
    public static func solve(_ head: ListNode?) -> ListNode?
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
