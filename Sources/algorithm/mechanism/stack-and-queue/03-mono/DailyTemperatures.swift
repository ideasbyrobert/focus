public enum DailyTemperatures
{
    public static func solve(_ temperatures: [Int]) -> [Int]
    {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []

        for index in temperatures.indices
        {
            while let lastIndex = stack.last, temperatures[index] > temperatures[lastIndex]
            {
                _ = stack.popLast()
                result[lastIndex] = index - lastIndex
            }

            stack.append(index)
        }

        return result
    }
}
