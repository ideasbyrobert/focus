public enum AsteroidCollision
{
    public static func solve(_ asteroids: [Int]) -> [Int]
    {
        var stack: [Int] = []

        for asteroid in asteroids
        {
            let current = asteroid
            var isDestroyed = false

            while let last = stack.last, last > 0, current < 0
            {
                if abs(last) < abs(current)
                {
                    _ = stack.popLast()
                    continue
                }

                if abs(last) == abs(current)
                {
                    _ = stack.popLast()
                }

                isDestroyed = true
                break
            }

            if !isDestroyed
            {
                stack.append(current)
            }
        }

        return stack
    }
}
