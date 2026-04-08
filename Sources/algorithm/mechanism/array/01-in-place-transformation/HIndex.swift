public enum HIndex
{
    public static func solve(_ citations: [Int]) -> Int
    {
        let sortedCitations = citations.sorted(by: >)
        var hIndex = 0

        for (offset, citationCount) in sortedCitations.enumerated()
        {
            let paperCount = offset + 1

            if citationCount >= paperCount
            {
                hIndex = paperCount
            }
            else
            {
                break
            }
        }

        return hIndex
    }
}
