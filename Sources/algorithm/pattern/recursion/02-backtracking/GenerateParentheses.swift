public enum GenerateParentheses
{
    public static func solve(_ pairCount: Int) -> [String]
    {
        if pairCount == 0
        {
            return [""]
        }

        var combinations: [String] = []
        var path: [Character] = []

        func backtrack(_ openCount: Int, _ closeCount: Int)
        {
            if path.count == pairCount * 2
            {
                combinations.append(String(path))
                return
            }

            if openCount < pairCount
            {
                path.append("(")
                backtrack(openCount + 1, closeCount)
                path.removeLast()
            }

            if closeCount < openCount
            {
                path.append(")")
                backtrack(openCount, closeCount + 1)
                path.removeLast()
            }
        }

        backtrack(0, 0)

        return combinations
    }
}
