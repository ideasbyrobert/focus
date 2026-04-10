public enum Permutations
{
    public static func solve(_ numbers: [Int]) -> [[Int]]
    {
        if numbers.isEmpty
        {
            return [[]]
        }

        var permutations: [[Int]] = []
        var path: [Int] = []
        var used = Array(repeating: false, count: numbers.count)

        func backtrack()
        {
            if path.count == numbers.count
            {
                permutations.append(path)
                return
            }

            for index in numbers.indices
            {
                if used[index]
                {
                    continue
                }

                used[index] = true
                path.append(numbers[index])
                backtrack()
                path.removeLast()
                used[index] = false
            }
        }

        backtrack()

        return permutations
    }
}
