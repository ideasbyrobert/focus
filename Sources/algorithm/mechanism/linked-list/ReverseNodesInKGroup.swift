public enum ReverseNodesInKGroup
{
    public static func solve(_ head: ListNode?, groupSize k: Int) -> ListNode?
    {
        guard k > 1, head != nil else
        {
            return head
        }

        let dummy = ListNode(0, next: head)
        var groupPrevious: ListNode? = dummy

        while let kthNode = kthNode(from: groupPrevious, taking: k)
        {
            let groupNext = kthNode.next
            let groupStart = groupPrevious?.next
            var previous = groupNext
            var current = groupStart

            while current !== groupNext
            {
                let next = current?.next
                current?.next = previous
                previous = current
                current = next
            }

            groupPrevious?.next = kthNode
            groupPrevious = groupStart
        }

        return dummy.next
    }

    private static func kthNode(from start: ListNode?, taking count: Int) -> ListNode?
    {
        var current = start

        for _ in 0..<count
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
