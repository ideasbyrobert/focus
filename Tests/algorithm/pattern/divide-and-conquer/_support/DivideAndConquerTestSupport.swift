@testable import AlgorithmDivideAndConquer

func buildList(_ values: [Int]) -> ListNode?
{
    let dummy = ListNode(0)
    var tail = dummy

    for value in values
    {
        tail.next = ListNode(value)
        tail = tail.next!
    }

    return dummy.next
}

func listValues(from head: ListNode?) -> [Int]
{
    var values: [Int] = []
    var current = head

    while current != nil
    {
        values.append(current!.value)
        current = current?.next
    }

    return values
}

func treeValuesInOrder(_ root: TreeNode?) -> [Int]
{
    guard let root else
    {
        return []
    }

    return treeValuesInOrder(root.left) + [root.value] + treeValuesInOrder(root.right)
}

func isHeightBalanced(_ root: TreeNode?) -> Bool
{
    heightIfBalanced(root) != nil
}

private func heightIfBalanced(_ root: TreeNode?) -> Int?
{
    guard let root else
    {
        return 0
    }

    guard let leftHeight = heightIfBalanced(root.left),
          let rightHeight = heightIfBalanced(root.right),
          abs(leftHeight - rightHeight) <= 1
    else
    {
        return nil
    }

    return 1 + max(leftHeight, rightHeight)
}

func quadTreeSnapshot(_ root: QuadTreeNode?) -> String
{
    guard let root else
    {
        return "nil"
    }

    if root.isLeaf
    {
        return root.value ? "L1" : "L0"
    }

    return "I(\(quadTreeSnapshot(root.topLeft)),\(quadTreeSnapshot(root.topRight)),\(quadTreeSnapshot(root.bottomLeft)),\(quadTreeSnapshot(root.bottomRight)))"
}
