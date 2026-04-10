public enum CombinationSum
{
    public static func solve(_ candidates: [Int], _ target: Int) -> [[Int]]
    {
        let sortedCandidates = candidates.sorted()
        var combinations: [[Int]] = []
        var path: [Int] = []

        func backtrack(_ start: Int, _ remainingTarget: Int)
        {
            if remainingTarget == 0
            {
                combinations.append(path)
                return
            }

            guard start < sortedCandidates.count else
            {
                return
            }

            for index in start..<sortedCandidates.count
            {
                let candidate = sortedCandidates[index]

                if candidate > remainingTarget
                {
                    break
                }

                path.append(candidate)
                backtrack(index, remainingTarget - candidate)
                path.removeLast()
            }
        }

        backtrack(0, target)

        return combinations
    }
}
