public enum CombinationSumIII
{
    public static func solve(_ count: Int, _ target: Int) -> [[Int]]
    {
        if count == 0
        {
            return target == 0 ? [[]] : []
        }

        var combinations: [[Int]] = []
        var path: [Int] = []

        func backtrack(_ nextCandidate: Int, _ remainingCount: Int, _ remainingTarget: Int)
        {
            if remainingCount == 0
            {
                if remainingTarget == 0
                {
                    combinations.append(path)
                }

                return
            }

            guard remainingTarget > 0, nextCandidate <= 9 else
            {
                return
            }

            for candidate in nextCandidate...9
            {
                if candidate > remainingTarget
                {
                    break
                }

                let availableNumbers = 9 - candidate + 1

                if availableNumbers < remainingCount
                {
                    break
                }

                path.append(candidate)
                backtrack(candidate + 1, remainingCount - 1, remainingTarget - candidate)
                path.removeLast()
            }
        }

        backtrack(1, count, target)

        return combinations
    }
}
