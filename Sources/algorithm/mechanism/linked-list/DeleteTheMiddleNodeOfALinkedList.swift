public enum DeleteTheMiddleNodeOfALinkedList
{
    public static func solve(_ head: ListNode?) -> ListNode?
    {
        guard head?.next != nil else
        {
            return nil
        }

        var previous: ListNode?
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil
        {
            previous = slow
            slow = slow?.next
            fast = fast?.next?.next
        }

        previous?.next = slow?.next

        return head
    }
}
