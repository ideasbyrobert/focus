public enum LargestPerimeterTriangle
{
    public static func solve(_ sides: [Int]) -> Int
    {
        let sortedSides = sides.sorted(by: >)

        guard sortedSides.count >= 3 else
        {
            return 0
        }

        for index in 0..<(sortedSides.count - 2)
        {
            let largestSide = sortedSides[index]
            let middleSide = sortedSides[index + 1]
            let smallestSide = sortedSides[index + 2]

            if middleSide + smallestSide > largestSide
            {
                return largestSide + middleSide + smallestSide
            }
        }

        return 0
    }
}
