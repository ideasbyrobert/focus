public enum ContainsDuplicateII
{
    public static func solve(_ numbers: [Int], within distance: Int) -> Bool
    {
        guard distance > 0 else
        {
            return false
        }

        var lastIndexByNumber: [Int: Int] = [:]

        for (index, number) in numbers.enumerated()
        {
            if let previousIndex = lastIndexByNumber[number], index - previousIndex <= distance
            {
                return true
            }

            lastIndexByNumber[number] = index
        }

        return false
    }
}
