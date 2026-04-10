public enum FindTheHighestAltitude
{
    public static func solve(_ gain: [Int]) -> Int
    {
        var altitude = 0
        var highestAltitude = 0

        for change in gain
        {
            altitude += change
            highestAltitude = max(highestAltitude, altitude)
        }

        return highestAltitude
    }
}
