public enum CopyListWithRandomPointer
{
    public static func solve(_ head: RandomListNode?) -> RandomListNode?
    {
        var copiesByOriginal: [ObjectIdentifier: RandomListNode] = [:]
        var current = head

        while let node = current
        {
            copiesByOriginal[ObjectIdentifier(node)] = RandomListNode(node.value)
            current = node.next
        }

        current = head

        while let node = current
        {
            let copy = copiesByOriginal[ObjectIdentifier(node)]!

            if let next = node.next
            {
                copy.next = copiesByOriginal[ObjectIdentifier(next)]
            }

            if let random = node.random
            {
                copy.random = copiesByOriginal[ObjectIdentifier(random)]
            }

            current = node.next
        }

        guard let head else
        {
            return nil
        }

        return copiesByOriginal[ObjectIdentifier(head)]
    }
}
