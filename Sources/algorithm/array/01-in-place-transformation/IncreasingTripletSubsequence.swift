public enum IncreasingTripletSubsequence
{
    public static func solve(_ numbers: [Int]) -> Bool
    {
        var smallest = Int.max
        var secondSmallest = Int.max

        for number in numbers
        {
            if number <= smallest
            {
                smallest = number
            }
            else if number <= secondSmallest
            {
                secondSmallest = number
            }
            else
            {
                return true
            }
        }

        return false
    }
}
