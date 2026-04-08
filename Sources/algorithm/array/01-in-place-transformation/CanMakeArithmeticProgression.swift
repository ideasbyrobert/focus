public enum CanMakeArithmeticProgression
{
    public static func solve(_ numbers: [Int]) -> Bool
    {
        if numbers.count < 3
        {
            return true
        }

        let sortedNumbers = numbers.sorted()
        let commonDifference = sortedNumbers[1] - sortedNumbers[0]

        for index in 2..<sortedNumbers.count
        {
            if sortedNumbers[index] - sortedNumbers[index - 1] != commonDifference
            {
                return false
            }
        }

        return true
    }
}
