public enum TotalCostToHireKWorkers
{
    public static func solve(_ costs: [Int], workerCount: Int, candidateCount: Int) -> Int64
    {
        guard workerCount > 0 else
        {
            return 0
        }

        var leftHeap = Heap<(cost: Int, index: Int)>(
            sort:
            {
                left, right in

                if left.cost != right.cost
                {
                    return left.cost < right.cost
                }

                return left.index < right.index
            }
        )
        var rightHeap = Heap<(cost: Int, index: Int)>(
            sort:
            {
                left, right in

                if left.cost != right.cost
                {
                    return left.cost < right.cost
                }

                return left.index < right.index
            }
        )

        var leftIndex = 0
        var rightIndex = costs.count - 1

        for _ in 0..<candidateCount
        {
            if leftIndex <= rightIndex
            {
                leftHeap.insert((costs[leftIndex], leftIndex))
                leftIndex += 1
            }
        }

        for _ in 0..<candidateCount
        {
            if leftIndex <= rightIndex
            {
                rightHeap.insert((costs[rightIndex], rightIndex))
                rightIndex -= 1
            }
        }

        var totalCost: Int64 = 0

        for _ in 0..<workerCount
        {
            let leftCandidate = leftHeap.peek()
            let rightCandidate = rightHeap.peek()

            if shouldHireFromLeft(leftCandidate, rightCandidate)
            {
                let hired = leftHeap.remove()!
                totalCost += Int64(hired.cost)

                if leftIndex <= rightIndex
                {
                    leftHeap.insert((costs[leftIndex], leftIndex))
                    leftIndex += 1
                }
            }
            else
            {
                let hired = rightHeap.remove()!
                totalCost += Int64(hired.cost)

                if leftIndex <= rightIndex
                {
                    rightHeap.insert((costs[rightIndex], rightIndex))
                    rightIndex -= 1
                }
            }
        }

        return totalCost
    }

    private static func shouldHireFromLeft(_ leftCandidate: (cost: Int, index: Int)?, _ rightCandidate: (cost: Int, index: Int)?) -> Bool
    {
        guard let leftCandidate else
        {
            return false
        }

        guard let rightCandidate else
        {
            return true
        }

        if leftCandidate.cost != rightCandidate.cost
        {
            return leftCandidate.cost < rightCandidate.cost
        }

        return leftCandidate.index < rightCandidate.index
    }
}
