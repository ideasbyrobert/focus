public enum MergeKSortedLists
{
    public static func solve(_ lists: [ListNode?]) -> ListNode?
    {
        var heap = Heap<(value: Int, order: Int, node: ListNode)>(
            sort:
            {
                left, right in

                if left.value != right.value
                {
                    return left.value < right.value
                }

                return left.order < right.order
            }
        )
        var order = 0

        for node in lists
        {
            if let node
            {
                heap.insert((node.value, order, node))
                order += 1
            }
        }

        let dummy = ListNode(0)
        var tail = dummy

        while let entry = heap.remove()
        {
            let current = entry.node
            let next = current.next
            current.next = nil
            tail.next = current
            tail = current

            if let next
            {
                heap.insert((next.value, order, next))
                order += 1
            }
        }

        return dummy.next
    }
}
