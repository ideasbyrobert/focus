public enum ConstructFromPreorderAndInorder
{
    public static func solve(_ preorder: [Int], _ inorder: [Int]) -> TreeNode?
    {
        let indicesByValue = Dictionary(uniqueKeysWithValues: inorder.enumerated().map { ($0.element, $0.offset) })
        var preorderIndex = 0

        return build(
            preorder,
            inorderStart: 0,
            inorderEnd: inorder.count - 1,
            preorderIndex: &preorderIndex,
            indicesByValue: indicesByValue
        )
    }

    private static func build(
        _ preorder: [Int],
        inorderStart: Int,
        inorderEnd: Int,
        preorderIndex: inout Int,
        indicesByValue: [Int: Int]
    ) -> TreeNode?
    {
        if inorderStart > inorderEnd
        {
            return nil
        }

        let rootValue = preorder[preorderIndex]
        preorderIndex += 1
        let rootIndex = indicesByValue[rootValue]!

        return TreeNode(
            rootValue,
            left: build(
                preorder,
                inorderStart: inorderStart,
                inorderEnd: rootIndex - 1,
                preorderIndex: &preorderIndex,
                indicesByValue: indicesByValue
            ),
            right: build(
                preorder,
                inorderStart: rootIndex + 1,
                inorderEnd: inorderEnd,
                preorderIndex: &preorderIndex,
                indicesByValue: indicesByValue
            )
        )
    }
}
