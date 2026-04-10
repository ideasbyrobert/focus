public enum GasStation
{
    public static func solve(_ gas: [Int], _ cost: [Int]) -> Int
    {
        var totalBalance = 0
        var currentBalance = 0
        var candidateStart = 0

        for index in gas.indices
        {
            let balance = gas[index] - cost[index]
            totalBalance += balance
            currentBalance += balance

            if currentBalance < 0
            {
                candidateStart = index + 1
                currentBalance = 0
            }
        }

        return totalBalance >= 0 ? candidateStart : -1
    }
}
