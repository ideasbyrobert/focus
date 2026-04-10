public enum RemoveDuplicatesFromSortedListII
{
    public static func solve(_ head: ListNode?) -> ListNode?
    {
        let dummy = ListNode(0, next: head)
        var previous: ListNode? = dummy
        var current = head

        while current != nil
        {
            if current?.next != nil && current?.value == current?.next?.value
            {
                let duplicateValue = current?.value

                while current != nil && current?.value == duplicateValue
                {
                    current = current?.next
                }

                previous?.next = current
            }
            else
            {
                previous = current
                current = current?.next
            }
        }

        return dummy.next
    }
}
