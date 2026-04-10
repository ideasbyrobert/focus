public enum ThreeSum
{
    public static func solve(_ numbers: [Int]) -> [[Int]]
    {
        let sortedNumbers = numbers.sorted()
        var triplets: [[Int]] = []

        for index in 0..<sortedNumbers.count
        {
            if index > 0 && sortedNumbers[index] == sortedNumbers[index - 1]
            {
                continue
            }

            var left = index + 1
            var right = sortedNumbers.count - 1

            while left < right
            {
                let sum = sortedNumbers[index] + sortedNumbers[left] + sortedNumbers[right]

                if sum == 0
                {
                    triplets.append([sortedNumbers[index], sortedNumbers[left], sortedNumbers[right]])
                    left += 1
                    right -= 1

                    while left < right && sortedNumbers[left] == sortedNumbers[left - 1]
                    {
                        left += 1
                    }

                    while left < right && sortedNumbers[right] == sortedNumbers[right + 1]
                    {
                        right -= 1
                    }
                }
                else if sum < 0
                {
                    left += 1
                }
                else
                {
                    right -= 1
                }
            }
        }

        return triplets
    }
}
