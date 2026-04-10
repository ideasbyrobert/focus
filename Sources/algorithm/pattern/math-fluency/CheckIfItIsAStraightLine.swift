public enum CheckIfItIsAStraightLine
{
    public static func solve(_ coordinates: [[Int]]) -> Bool
    {
        guard coordinates.count > 2 else
        {
            return true
        }

        let firstPoint = coordinates[0]
        let secondPoint = coordinates[1]
        let deltaX = secondPoint[0] - firstPoint[0]
        let deltaY = secondPoint[1] - firstPoint[1]

        for index in 2..<coordinates.count
        {
            let point = coordinates[index]
            let currentDeltaX = point[0] - firstPoint[0]
            let currentDeltaY = point[1] - firstPoint[1]

            if deltaY * currentDeltaX != currentDeltaY * deltaX
            {
                return false
            }
        }

        return true
    }
}
