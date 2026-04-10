public enum HouseRobber
{
    public static func solve(_ houses: [Int]) -> Int
    {
        var twoHousesBack = 0
        var previousHouse = 0

        for money in houses
        {
            let current = max(previousHouse, twoHousesBack + money)
            twoHousesBack = previousHouse
            previousHouse = current
        }

        return previousHouse
    }
}
