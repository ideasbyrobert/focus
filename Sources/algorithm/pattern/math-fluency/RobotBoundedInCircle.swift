public enum RobotBoundedInCircle
{
    public static func solve(_ instructions: String) -> Bool
    {
        var x = 0
        var y = 0
        var directionIndex = 0
        let directions = [
            (0, 1),
            (1, 0),
            (0, -1),
            (-1, 0),
        ]

        for instruction in instructions
        {
            switch instruction
            {
            case "G":
                x += directions[directionIndex].0
                y += directions[directionIndex].1
            case "L":
                directionIndex = (directionIndex + 3) % 4
            case "R":
                directionIndex = (directionIndex + 1) % 4
            default:
                continue
            }
        }

        return (x == 0 && y == 0) || directionIndex != 0
    }
}
