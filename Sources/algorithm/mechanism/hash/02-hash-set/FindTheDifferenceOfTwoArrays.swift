public enum FindTheDifferenceOfTwoArrays
{
    public static func solve(_ left: [Int], _ right: [Int]) -> [[Int]]
    {
        let leftSet = Set(left)
        let rightSet = Set(right)

        let onlyInLeft = Array(leftSet.subtracting(rightSet))
        let onlyInRight = Array(rightSet.subtracting(leftSet))

        return [onlyInLeft, onlyInRight]
    }
}
