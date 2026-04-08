public enum RichestCustomerWealth
{
    public static func solve(_ accounts: [[Int]]) -> Int
    {
        var richestWealth = 0

        for account in accounts
        {
            let currentWealth = account.reduce(0, +)
            richestWealth = max(richestWealth, currentWealth)
        }

        return richestWealth
    }
}
