public enum MergeTwoSortedLists
{
    public static func solve(_ left: ListNode?, _ right: ListNode?) -> ListNode?
    {
        let dummy = ListNode(0)
        var tail = dummy
        var currentLeft = left
        var currentRight = right

        while currentLeft != nil && currentRight != nil
        {
            if currentLeft!.value <= currentRight!.value
            {
                tail.next = currentLeft
                currentLeft = currentLeft?.next
            }
            else
            {
                tail.next = currentRight
                currentRight = currentRight?.next
            }

            tail = tail.next!
        }

        tail.next = currentLeft ?? currentRight

        return dummy.next
    }
}
