public enum BestTimeToBuySellStockII
{
    public static func solve(_ prices: [Int]) -> Int
    {
        guard prices.count > 1 else
        {
            return 0
        }

        var profit = 0

        for index in 1..<prices.count
        {
            let difference = prices[index] - prices[index - 1]

            if difference > 0
            {
                profit += difference
            }
        }

        return profit
    }
}
