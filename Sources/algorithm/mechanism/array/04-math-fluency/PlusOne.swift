public enum PlusOne
{
    public static func solve(_ digits: [Int]) -> [Int]
    {
        guard !digits.isEmpty else
        {
            return [1]
        }

        var result = digits

        for index in stride(from: result.count - 1, through: 0, by: -1)
        {
            if result[index] < 9
            {
                result[index] += 1
                return result
            }

            result[index] = 0
        }

        result.insert(1, at: 0)

        return result
    }
}
