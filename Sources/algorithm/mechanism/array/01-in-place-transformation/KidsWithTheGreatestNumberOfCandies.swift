public enum KidsWithTheGreatestNumberOfCandies
{
    public static func solve(_ candies: [Int], extraCandies: Int) -> [Bool]
    {
        guard let greatestCount = candies.max() else
        {
            return []
        }

        return candies.map
        {
            $0 + extraCandies >= greatestCount
        }
    }
}
