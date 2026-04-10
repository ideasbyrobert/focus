public final class MedianFinder
{
    private var lowerHalf = Heap<Int>(sort: >)
    private var upperHalf = Heap<Int>(sort: <)

    public init()
    {
    }

    public func addNum(_ number: Int)
    {
        if let largestLower = lowerHalf.peek(), number > largestLower
        {
            upperHalf.insert(number)
        }
        else
        {
            lowerHalf.insert(number)
        }

        rebalanceHeapsIfNeeded()
    }

    public func findMedian() -> Double
    {
        if lowerHalf.count > upperHalf.count
        {
            return Double(lowerHalf.peek()!)
        }

        return (Double(lowerHalf.peek()!) + Double(upperHalf.peek()!)) / 2.0
    }

    private func rebalanceHeapsIfNeeded()
    {
        if lowerHalf.count > upperHalf.count + 1
        {
            upperHalf.insert(lowerHalf.remove()!)
        }
        else if upperHalf.count > lowerHalf.count
        {
            lowerHalf.insert(upperHalf.remove()!)
        }
    }
}
