public enum KthLargestElementInAnArray
{
    public static func solve(_ numbers: [Int], kthLargest rank: Int) -> Int
    {
        var heap = Heap<Int>(sort: <)

        for number in numbers
        {
            if heap.count < rank
            {
                heap.insert(number)
                continue
            }

            if let smallest = heap.peek(), number > smallest
            {
                _ = heap.remove()
                heap.insert(number)
            }
        }

        return heap.peek()!
    }
}
