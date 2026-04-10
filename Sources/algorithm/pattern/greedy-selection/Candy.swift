public enum Candy
{
    public static func solve(_ ratings: [Int]) -> Int
    {
        guard !ratings.isEmpty else
        {
            return 0
        }

        var candies = Array(repeating: 1, count: ratings.count)

        for index in 1..<ratings.count
        {
            if ratings[index] > ratings[index - 1]
            {
                candies[index] = candies[index - 1] + 1
            }
        }

        if ratings.count > 1
        {
            for index in stride(from: ratings.count - 2, through: 0, by: -1)
            {
                if ratings[index] > ratings[index + 1]
                {
                    candies[index] = max(candies[index], candies[index + 1] + 1)
                }
            }
        }

        return candies.reduce(0, +)
    }
}
