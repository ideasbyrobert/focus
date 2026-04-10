public enum IPO
{
    public static func solve(_ projectLimit: Int, _ initialCapital: Int, _ profits: [Int], _ capitalRequirements: [Int]) -> Int
    {
        let projects = zip(capitalRequirements, profits).sorted
        {
            left, right in

            if left.0 != right.0
            {
                return left.0 < right.0
            }

            return left.1 > right.1
        }

        var availableProjects = Heap<Int>(sort: >)
        var capital = initialCapital
        var projectIndex = 0

        for _ in 0..<projectLimit
        {
            while projectIndex < projects.count && projects[projectIndex].0 <= capital
            {
                availableProjects.insert(projects[projectIndex].1)
                projectIndex += 1
            }

            guard let profit = availableProjects.remove() else
            {
                break
            }

            capital += profit
        }

        return capital
    }
}
