public enum RemoveNthNodeFromEndOfList
{
    public static func solve(_ head: ListNode?, removingNthFromEnd n: Int) -> ListNode?
    {
        guard n > 0 else
        {
            return head
        }

        let dummy = ListNode(0, next: head)
        var lead: ListNode? = dummy

        for _ in 0..<n
        {
            guard let nextLead = lead?.next else
            {
                return head
            }

            lead = nextLead
        }

        var follow: ListNode? = dummy

        while lead?.next != nil
        {
            lead = lead?.next
            follow = follow?.next
        }

        follow?.next = follow?.next?.next

        return dummy.next
    }
}
