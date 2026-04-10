public enum DominoAndTrominoTiling
{
    private static let modulus = 1_000_000_007

    public static func solve(_ boardWidth: Int) -> Int
    {
        guard boardWidth > 3 else
        {
            switch boardWidth
            {
            case 0:
                return 0
            case 1:
                return 1
            case 2:
                return 2
            default:
                return 5
            }
        }

        var threeBack = 1
        var twoBack = 2
        var oneBack = 5

        for _ in 4...boardWidth
        {
            let current = ((2 * oneBack) + threeBack) % modulus
            threeBack = twoBack
            twoBack = oneBack
            oneBack = current
        }

        return oneBack
    }
}
