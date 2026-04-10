public enum Combinations
{
    public static func solve(_ count: Int, _ choose: Int) -> [[Int]]
    {
        if choose == 0
        {
            return [[]]
        }

        guard count >= choose else
        {
            return []
        }

        var combinations: [[Int]] = []
        var path: [Int] = []

        func backtrack(_ start: Int)
        {
            if path.count == choose
            {
                combinations.append(path)
                return
            }

            let remainingSlots = choose - path.count
            let lastStart = count - remainingSlots + 1

            guard start <= lastStart else
            {
                return
            }

            for candidate in start...lastStart
            {
                path.append(candidate)
                backtrack(candidate + 1)
                path.removeLast()
            }
        }

        backtrack(1)

        return combinations
    }
}
