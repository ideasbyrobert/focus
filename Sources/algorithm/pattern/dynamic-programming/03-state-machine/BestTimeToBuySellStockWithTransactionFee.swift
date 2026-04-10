public enum BestTimeToBuySellStockWithTransactionFee
{
    public static func solve(_ prices: [Int], fee: Int) -> Int
    {
        guard let firstPrice = prices.first else
        {
            return 0
        }

        var cash = 0
        var hold = -firstPrice

        for price in prices.dropFirst()
        {
            let nextCash = max(cash, hold + price - fee)
            let nextHold = max(hold, cash - price)
            cash = nextCash
            hold = nextHold
        }

        return cash
    }
}
