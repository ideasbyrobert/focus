public enum OddEvenLinkedList
{
    public static func solve(_ head: ListNode?) -> ListNode?
    {
        guard let head else
        {
            return nil
        }

        var odd: ListNode? = head
        let evenHead = head.next
        var even = evenHead

        while even != nil && even?.next != nil
        {
            odd?.next = even?.next
            odd = odd?.next
            even?.next = odd?.next
            even = even?.next
        }

        odd?.next = evenHead

        return head
    }
}
