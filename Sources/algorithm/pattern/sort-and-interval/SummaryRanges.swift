public enum SummaryRanges
{
    public static func solve(_ numbers: [Int]) -> [String]
    {
        guard !numbers.isEmpty else
        {
            return []
        }

        var ranges: [String] = []
        var rangeStart = numbers[0]
        var rangeEnd = numbers[0]

        for index in 1..<numbers.count
        {
            if numbers[index] == rangeEnd + 1
            {
                rangeEnd = numbers[index]
            }
            else
            {
                ranges.append(formatRange(from: rangeStart, to: rangeEnd))
                rangeStart = numbers[index]
                rangeEnd = numbers[index]
            }
        }

        ranges.append(formatRange(from: rangeStart, to: rangeEnd))

        return ranges
    }

    private static func formatRange(from start: Int, to end: Int) -> String
    {
        start == end ? "\(start)" : "\(start)->\(end)"
    }
}
