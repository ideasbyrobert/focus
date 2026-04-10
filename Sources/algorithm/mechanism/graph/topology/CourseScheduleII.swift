public enum CourseScheduleII
{
    public static func solve(_ courseCount: Int, _ prerequisites: [[Int]]) -> [Int]
    {
        var adjacency = Array(repeating: [Int](), count: courseCount)
        var inDegree = Array(repeating: 0, count: courseCount)

        for prerequisite in prerequisites
        {
            adjacency[prerequisite[1]].append(prerequisite[0])
            inDegree[prerequisite[0]] += 1
        }

        var queue: [Int] = []

        for course in 0..<courseCount
        {
            if inDegree[course] == 0
            {
                queue.append(course)
            }
        }

        var index = 0
        var order: [Int] = []

        while index < queue.count
        {
            let course = queue[index]
            index += 1
            order.append(course)

            for neighbor in adjacency[course]
            {
                inDegree[neighbor] -= 1

                if inDegree[neighbor] == 0
                {
                    queue.append(neighbor)
                }
            }
        }

        return order.count == courseCount ? order : []
    }
}
