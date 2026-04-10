public enum FindKPairsWithSmallestSums
{
    public static func solve(_ numbers1: [Int], _ numbers2: [Int], pairCount: Int) -> [[Int]]
    {
        guard !numbers1.isEmpty, !numbers2.isEmpty, pairCount > 0 else
        {
            return []
        }

        var heap = Heap<(sum: Int, leftIndex: Int, rightIndex: Int)>(
            sort:
            {
                left, right in

                if left.sum != right.sum
                {
                    return left.sum < right.sum
                }

                if left.leftIndex != right.leftIndex
                {
                    return left.leftIndex < right.leftIndex
                }

                return left.rightIndex < right.rightIndex
            }
        )

        let initialCount = min(pairCount, numbers1.count)

        for leftIndex in 0..<initialCount
        {
            heap.insert((numbers1[leftIndex] + numbers2[0], leftIndex, 0))
        }

        var pairs: [[Int]] = []

        while pairs.count < pairCount, let entry = heap.remove()
        {
            pairs.append([numbers1[entry.leftIndex], numbers2[entry.rightIndex]])

            let nextRightIndex = entry.rightIndex + 1

            if nextRightIndex < numbers2.count
            {
                heap.insert((numbers1[entry.leftIndex] + numbers2[nextRightIndex], entry.leftIndex, nextRightIndex))
            }
        }

        return pairs
    }
}
