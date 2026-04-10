public enum TwoSum
{
    public static func solve(_ numbers: [Int], target: Int) -> [Int]
    {
        var indicesByNumber: [Int: Int] = [:]

        for (index, number) in numbers.enumerated()
        {
            let complement = target - number

            if let complementIndex = indicesByNumber[complement]
            {
                return [complementIndex, index]
            }

            indicesByNumber[number] = index
        }

        return []
    }
}
