public enum PartitionList
{
    public static func solve(_ head: ListNode?, partitioningAround pivot: Int) -> ListNode?
    {
        let lessDummy = ListNode(0)
        let greaterOrEqualDummy = ListNode(0)
        var lessTail = lessDummy
        var greaterOrEqualTail = greaterOrEqualDummy
        var current = head

        while current != nil
        {
            let next = current?.next
            current?.next = nil

            if current!.value < pivot
            {
                lessTail.next = current
                lessTail = lessTail.next!
            }
            else
            {
                greaterOrEqualTail.next = current
                greaterOrEqualTail = greaterOrEqualTail.next!
            }

            current = next
        }

        lessTail.next = greaterOrEqualDummy.next

        return lessDummy.next
    }
}
