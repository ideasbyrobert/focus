public enum AverageSalaryExcludingMinAndMax
{
    public static func solve(_ salaries: [Int]) -> Double
    {
        guard salaries.count > 2 else
        {
            return 0
        }

        var total = 0
        var minimum = Int.max
        var maximum = Int.min

        for salary in salaries
        {
            total += salary
            minimum = min(minimum, salary)
            maximum = max(maximum, salary)
        }

        return Double(total - minimum - maximum) / Double(salaries.count - 2)
    }
}
