public final class ParkingSystem
{
    private var remainingSpacesByCarType: [Int]

    public init(big: Int, medium: Int, small: Int)
    {
        remainingSpacesByCarType = [0, big, medium, small]
    }

    public func addCar(_ carType: Int) -> Bool
    {
        if carType < 1 || carType > 3
        {
            return false
        }

        if remainingSpacesByCarType[carType] == 0
        {
            return false
        }

        remainingSpacesByCarType[carType] -= 1

        return true
    }
}
