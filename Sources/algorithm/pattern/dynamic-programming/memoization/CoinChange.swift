public enum CoinChange
{
    public static func solve(_ coins: [Int], _ amount: Int) -> Int
    {
        guard amount > 0 else
        {
            return 0
        }

        var minimumCoins = Array(repeating: amount + 1, count: amount + 1)
        minimumCoins[0] = 0

        for currentAmount in 1...amount
        {
            for coin in coins where coin <= currentAmount
            {
                minimumCoins[currentAmount] = min(
                    minimumCoins[currentAmount],
                    minimumCoins[currentAmount - coin] + 1
                )
            }
        }

        return minimumCoins[amount] > amount ? -1 : minimumCoins[amount]
    }
}
