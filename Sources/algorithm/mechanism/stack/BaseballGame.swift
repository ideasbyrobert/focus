public enum BaseballGame
{
    public static func solve(_ operations: [String]) -> Int
    {
        var scores: [Int] = []

        for operation in operations
        {
            switch operation
            {
            case "+":
                scores.append(scores[scores.count - 1] + scores[scores.count - 2])
            case "D":
                scores.append(scores[scores.count - 1] * 2)
            case "C":
                _ = scores.popLast()
            default:
                scores.append(Int(operation)!)
            }
        }

        return scores.reduce(0, +)
    }
}
