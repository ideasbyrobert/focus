public enum BestTimeToBuyAndSellStock
{
    public static func solve(_ prices: [Int]) -> Int
    {
        guard prices.count > 1 else
        {
            return 0
        }

        var minimumPriceSoFar = prices[0]
        var maximumProfit = 0

        for price in prices.dropFirst()
        {
            maximumProfit = max(maximumProfit, price - minimumPriceSoFar)
            minimumPriceSoFar = min(minimumPriceSoFar, price)
        }

        return maximumProfit
    }
}
