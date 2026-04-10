public enum BestTimeToBuySellStockIII
{
    public static func solve(_ prices: [Int]) -> Int
    {
        var firstBuy = Int.min
        var firstSell = 0
        var secondBuy = Int.min
        var secondSell = 0

        for price in prices
        {
            firstBuy = max(firstBuy, -price)
            firstSell = max(firstSell, firstBuy + price)
            secondBuy = max(secondBuy, firstSell - price)
            secondSell = max(secondSell, secondBuy + price)
        }

        return secondSell
    }
}
