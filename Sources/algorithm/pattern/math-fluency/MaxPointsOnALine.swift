public enum MaxPointsOnALine
{
    public static func solve(_ points: [[Int]]) -> Int
    {
        guard points.count > 2 else
        {
            return points.count
        }

        var bestCount = 0

        for firstIndex in 0..<points.count
        {
            var slopeCounts: [String: Int] = [:]
            var duplicateCount = 1
            var localBest = 0

            let firstPoint = points[firstIndex]
            let x1 = firstPoint[0]
            let y1 = firstPoint[1]

            for secondIndex in (firstIndex + 1)..<points.count
            {
                let secondPoint = points[secondIndex]
                var deltaX = secondPoint[0] - x1
                var deltaY = secondPoint[1] - y1

                if deltaX == 0 && deltaY == 0
                {
                    duplicateCount += 1
                    continue
                }

                let divisor = greatestCommonDivisor(abs(deltaX), abs(deltaY))
                deltaX /= divisor
                deltaY /= divisor

                if deltaX < 0
                {
                    deltaX = -deltaX
                    deltaY = -deltaY
                }
                else if deltaX == 0
                {
                    deltaY = 1
                }
                else if deltaY == 0
                {
                    deltaX = 1
                }

                let key = "\(deltaY):\(deltaX)"
                let count = (slopeCounts[key] ?? 0) + 1
                slopeCounts[key] = count
                localBest = max(localBest, count)
            }

            bestCount = max(bestCount, localBest + duplicateCount)
        }

        return bestCount
    }

    private static func greatestCommonDivisor(_ first: Int, _ second: Int) -> Int
    {
        var a = first
        var b = second

        while b != 0
        {
            let remainder = a % b
            a = b
            b = remainder
        }

        return max(a, 1)
    }
}
