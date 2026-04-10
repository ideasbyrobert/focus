@testable import AlgorithmTree

func buildTree(_ values: [Int?]) -> TreeNode?
{
    guard !values.isEmpty, values[0] != nil else
    {
        return nil
    }

    let nodes = values.map
    {
        value in

        value.map
        {
            TreeNode($0)
        }
    }

    for index in values.indices
    {
        guard let node = nodes[index] else
        {
            continue
        }

        let leftIndex = (index * 2) + 1
        let rightIndex = (index * 2) + 2

        if leftIndex < nodes.count
        {
            node.left = nodes[leftIndex]
        }

        if rightIndex < nodes.count
        {
            node.right = nodes[rightIndex]
        }
    }

    return nodes[0]
}

func treeValuesInLevelOrder(_ root: TreeNode?) -> [Int?]
{
    guard let root else
    {
        return []
    }

    var queue: [TreeNode?] = [root]
    var index = 0
    var values: [Int?] = []

    while index < queue.count
    {
        let node = queue[index]
        index += 1

        guard let node else
        {
            values.append(nil)
            continue
        }

        values.append(node.value)
        queue.append(node.left)
        queue.append(node.right)
    }

    while let lastValue = values.last, lastValue == nil
    {
        values.removeLast()
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
