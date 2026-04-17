@testable import AlgorithmRecursionAndBinaryTree

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

func buildNextTree(_ values: [Int?]) -> NextTreeNode?
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
            NextTreeNode($0)
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

func treeValuesPreorder(_ root: TreeNode?) -> [Int]
{
    guard let root else
    {
        return []
    }

    return [root.value] + treeValuesPreorder(root.left) + treeValuesPreorder(root.right)
}

func treeValuesInOrder(_ root: TreeNode?) -> [Int]
{
    guard let root else
    {
        return []
    }

    return treeValuesInOrder(root.left) + [root.value] + treeValuesInOrder(root.right)
}

func treeValuesPostorder(_ root: TreeNode?) -> [Int]
{
    guard let root else
    {
        return []
    }

    return treeValuesPostorder(root.left) + treeValuesPostorder(root.right) + [root.value]
}

func flattenedTreeValues(_ root: TreeNode?) -> [Int]
{
    var values: [Int] = []
    var current = root

    while let node = current
    {
        values.append(node.value)
        current = node.right
    }

    return values
}

func flattenedTreeHasNoLeftPointers(_ root: TreeNode?) -> Bool
{
    var current = root

    while let node = current
    {
        if node.left != nil
        {
            return false
        }

        current = node.right
    }

    return true
}

func findNode(in root: TreeNode?, value: Int) -> TreeNode?
{
    guard let root else
    {
        return nil
    }

    if root.value == value
    {
        return root
    }

    return findNode(in: root.left, value: value) ?? findNode(in: root.right, value: value)
}

func nextPointerLevels(_ root: NextTreeNode?) -> [[Int]]
{
    var levels: [[Int]] = []
    var levelStart = root

    while let start = levelStart
    {
        var values: [Int] = []
        var current: NextTreeNode? = start
        var nextLevelStart: NextTreeNode?

        while let node = current
        {
            values.append(node.value)

            if nextLevelStart == nil
            {
                nextLevelStart = node.left ?? node.right
            }

            current = node.next
        }

        levels.append(values)
        levelStart = nextLevelStart
    }

    return levels
}
