public enum AddTwoNumbers
{
    public static func solve(_ left: ListNode?, _ right: ListNode?) -> ListNode?
    {
        let dummy = ListNode(0)
        var tail = dummy
        var currentLeft = left
        var currentRight = right
        var carry = 0

        while currentLeft != nil || currentRight != nil || carry > 0
        {
            let total = (currentLeft?.value ?? 0) + (currentRight?.value ?? 0) + carry
            tail.next = ListNode(total % 10)
            tail = tail.next!
            carry = total / 10
            currentLeft = currentLeft?.next
            currentRight = currentRight?.next
        }

        return dummy.next
    }
}
