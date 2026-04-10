public enum BestTimeToBuySellStockIV
{
    public static func solve(_ transactionCount: Int, _ prices: [Int]) -> Int
    {
        guard transactionCount > 0, !prices.isEmpty else
        {
            return 0
        }

        if transactionCount >= prices.count / 2
        {
            return unlimitedTransactionProfit(prices)
        }

        var buys = Array(repeating: Int.min, count: transactionCount)
        var sells = Array(repeating: 0, count: transactionCount)

        for price in prices
        {
            for transactionIndex in 0..<transactionCount
            {
                let previousSell = transactionIndex == 0 ? 0 : sells[transactionIndex - 1]
                buys[transactionIndex] = max(buys[transactionIndex], previousSell - price)
                sells[transactionIndex] = max(sells[transactionIndex], buys[transactionIndex] + price)
            }
        }

        return sells[transactionCount - 1]
    }

    private static func unlimitedTransactionProfit(_ prices: [Int]) -> Int
    {
        var profit = 0

        for index in 1..<prices.count where prices[index] > prices[index - 1]
        {
            profit += prices[index] - prices[index - 1]
        }

        return profit
    }
}
