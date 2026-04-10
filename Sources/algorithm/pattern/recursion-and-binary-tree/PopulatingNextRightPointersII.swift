public enum PopulatingNextRightPointersII
{
    public static func solve(_ root: NextTreeNode?) -> NextTreeNode?
    {
        var levelStart = root

        while levelStart != nil
        {
            let dummy = NextTreeNode(0)
            var tail = dummy
            var current = levelStart

            while current != nil
            {
                if let left = current?.left
                {
                    tail.next = left
                    tail = left
                }

                if let right = current?.right
                {
                    tail.next = right
                    tail = right
                }

                current = current?.next
            }

            levelStart = dummy.next
        }

        return root
    }
}
