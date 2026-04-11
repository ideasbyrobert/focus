public enum ReverseNodesInKGroup
{
    public static func solve(_ head: ListNode?, groupSize k: Int) -> ListNode?
    {
        guard k > 1, head != nil else
        {
            return head
        }

        let dummy = ListNode(0, next: head)
        var nodeBeforeGroup: ListNode? = dummy

        while let groupEnd = findGroupEnd(startingAfter: nodeBeforeGroup, groupSize: k)
        {
            let nodeAfterGroup = groupEnd.next
            let groupHead = nodeBeforeGroup?.next
            var nextReversedNode = nodeAfterGroup
            var nodeBeingReversed = groupHead

            while nodeBeingReversed !== nodeAfterGroup
            {
                let next = nodeBeingReversed?.next
                nodeBeingReversed?.next = nextReversedNode
                nextReversedNode = nodeBeingReversed
                nodeBeingReversed = next
            }

            nodeBeforeGroup?.next = groupEnd
            nodeBeforeGroup = groupHead
        }

        return dummy.next
    }

    private static func findGroupEnd(startingAfter: ListNode?, groupSize: Int) -> ListNode?
    {
        var current = startingAfter

        for _ in 0..<groupSize
        {
            current = current?.next

            if current == nil
            {
                return nil
            }
        }

        return current
    }
}
