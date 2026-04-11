public enum RotateList
{
    public static func solve(_ head: ListNode?, by rotationCount: Int) -> ListNode?
    {
        guard let head, rotationCount > 0 else
        {
            return head
        }

        var listLength = 1
        var lastNode = head

        while lastNode.next != nil
        {
            lastNode = lastNode.next!
            listLength += 1
        }

        let rotation = rotationCount % listLength

        if rotation == 0
        {
            return head
        }

        lastNode.next = head

        var rotatedTail: ListNode? = head

        for _ in 0..<(listLength - rotation - 1)
        {
            rotatedTail = rotatedTail?.next
        }

        let rotatedHead = rotatedTail?.next
        rotatedTail?.next = nil

        return rotatedHead
    }
}
