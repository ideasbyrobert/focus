public final class RecentCounter
{
    private var calls: [Int] = []
    private var firstValidIndex = 0

    public init()
    {
    }

    public func ping(_ time: Int) -> Int
    {
        calls.append(time)

        while calls[firstValidIndex] < time - 3000
        {
            firstValidIndex += 1
        }

        return calls.count - firstValidIndex
    }
}
