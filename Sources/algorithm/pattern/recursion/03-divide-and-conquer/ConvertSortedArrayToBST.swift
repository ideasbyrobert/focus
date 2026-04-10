public enum ConvertSortedArrayToBST
{
    public static func solve(_ numbers: [Int]) -> TreeNode?
    {
        build(numbers, start: 0, end: numbers.count - 1)
    }

    private static func build(_ numbers: [Int], start: Int, end: Int) -> TreeNode?
    {
        if start > end
        {
            return nil
        }

        let middle = start + ((end - start) / 2)

        return TreeNode(
            numbers[middle],
            left: build(numbers, start: start, end: middle - 1),
            right: build(numbers, start: middle + 1, end: end)
        )
    }
}
