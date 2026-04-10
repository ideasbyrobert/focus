public enum RotateList
{
    public static func solve(_ head: ListNode?, by steps: Int) -> ListNode?
    {
        guard let head, steps > 0 else
        {
            return head
        }

        var length = 1
        var tail = head

        while tail.next != nil
        {
            tail = tail.next!
            length += 1
        }

        let rotation = steps % length

        if rotation == 0
        {
            return head
        }

        tail.next = head

        var newTail: ListNode? = head

        for _ in 0..<(length - rotation - 1)
        {
            newTail = newTail?.next
        }

        let newHead = newTail?.next
        newTail?.next = nil

        return newHead
    }
}
