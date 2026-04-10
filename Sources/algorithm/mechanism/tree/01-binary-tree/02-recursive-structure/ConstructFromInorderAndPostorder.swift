public enum ConstructFromInorderAndPostorder
{
    public static func solve(_ inorder: [Int], _ postorder: [Int]) -> TreeNode?
    {
        let indicesByValue = Dictionary(uniqueKeysWithValues: inorder.enumerated().map { ($0.element, $0.offset) })
        var postorderIndex = postorder.count - 1

        return build(
            postorder,
            inorderStart: 0,
            inorderEnd: inorder.count - 1,
            postorderIndex: &postorderIndex,
            indicesByValue: indicesByValue
        )
    }

    private static func build(
        _ postorder: [Int],
        inorderStart: Int,
        inorderEnd: Int,
        postorderIndex: inout Int,
        indicesByValue: [Int: Int]
    ) -> TreeNode?
    {
        if inorderStart > inorderEnd
        {
            return nil
        }

        let rootValue = postorder[postorderIndex]
        postorderIndex -= 1
        let rootIndex = indicesByValue[rootValue]!
        let right = build(
            postorder,
            inorderStart: rootIndex + 1,
            inorderEnd: inorderEnd,
            postorderIndex: &postorderIndex,
            indicesByValue: indicesByValue
        )
        let left = build(
            postorder,
            inorderStart: inorderStart,
            inorderEnd: rootIndex - 1,
            postorderIndex: &postorderIndex,
            indicesByValue: indicesByValue
        )

        return TreeNode(
            rootValue,
            left: left,
            right: right
        )
    }
}
