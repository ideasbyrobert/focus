public enum MinCostClimbingStairs
{
    public static func solve(_ costs: [Int]) -> Int
    {
        guard costs.count > 1 else
        {
            return 0
        }

        var twoStepsBack = 0
        var oneStepBack = 0

        for cost in costs
        {
            let current = cost + min(oneStepBack, twoStepsBack)
            twoStepsBack = oneStepBack
            oneStepBack = current
        }

        return min(oneStepBack, twoStepsBack)
    }
}
