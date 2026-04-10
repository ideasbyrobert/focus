public enum CourseSchedule
{
    public static func solve(_ courseCount: Int, _ prerequisites: [[Int]]) -> Bool
    {
        var adjacency = Array(repeating: [Int](), count: courseCount)

        for prerequisite in prerequisites
        {
            adjacency[prerequisite[1]].append(prerequisite[0])
        }

        var colors = Array(repeating: 0, count: courseCount)

        for course in 0..<courseCount
        {
            if colors[course] == 0 && containsCycle(startingAt: course, in: adjacency, colors: &colors)
            {
                return false
            }
        }

        return true
    }

    private static func containsCycle(startingAt course: Int, in adjacency: [[Int]], colors: inout [Int]) -> Bool
    {
        if colors[course] == 1
        {
            return true
        }

        if colors[course] == 2
        {
            return false
        }

        colors[course] = 1

        for neighbor in adjacency[course]
        {
            if containsCycle(startingAt: neighbor, in: adjacency, colors: &colors)
            {
                return true
            }
        }

        colors[course] = 2
        return false
    }
}
