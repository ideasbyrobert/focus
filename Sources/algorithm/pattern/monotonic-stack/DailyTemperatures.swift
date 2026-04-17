public enum DailyTemperatures
{
    public static func solve(_ dailyTemperatures: [Int]) -> [Int]
    {
        var daysUntilWarmerTemperature = Array(repeating: 0, count: dailyTemperatures.count)
        var unresolvedDayIndices: [Int] = []

        for currentDayIndex in dailyTemperatures.indices
        {
            while let lastUnresolvedDayIndex = unresolvedDayIndices.last, dailyTemperatures[currentDayIndex] > dailyTemperatures[lastUnresolvedDayIndex]
            {
                _ = unresolvedDayIndices.popLast()
                daysUntilWarmerTemperature[lastUnresolvedDayIndex] = currentDayIndex - lastUnresolvedDayIndex
            }

            unresolvedDayIndices.append(currentDayIndex)
        }

        return daysUntilWarmerTemperature
    }
}
