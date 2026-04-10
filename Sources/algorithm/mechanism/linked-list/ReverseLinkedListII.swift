public enum ReverseLinkedListII
{
    public static func solve(_ head: ListNode?, from leftPosition: Int, to rightPosition: Int) -> ListNode?
    {
        guard leftPosition > 0, rightPosition >= leftPosition else
        {
            return head
        }

        if leftPosition == rightPosition
        {
            return head
        }

        let dummy = ListNode(0, next: head)
        var nodeBeforeSection: ListNode? = dummy

        for _ in 1..<leftPosition
        {
            guard nodeBeforeSection?.next != nil else
            {
                return head
            }

            nodeBeforeSection = nodeBeforeSection?.next
        }

        let sectionTail = nodeBeforeSection?.next
        var moving = sectionTail?.next

        for _ in leftPosition..<rightPosition
        {
            guard moving != nil else
            {
                break
            }

            sectionTail?.next = moving?.next
            moving?.next = nodeBeforeSection?.next
            nodeBeforeSection?.next = moving
            moving = sectionTail?.next
        }

        return dummy.next
    }
}
