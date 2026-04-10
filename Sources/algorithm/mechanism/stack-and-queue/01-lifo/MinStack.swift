public final class MinStack
{
    private var values: [Int] = []
    private var minimums: [Int] = []

    public init()
    {
    }

    public func push(_ value: Int)
    {
        values.append(value)

        if let currentMinimum = minimums.last
        {
            minimums.append(min(value, currentMinimum))
        }
        else
        {
            minimums.append(value)
        }
    }

    public func pop()
    {
        _ = values.popLast()
        _ = minimums.popLast()
    }

    public func top() -> Int
    {
        values.last!
    }

    public func getMin() -> Int
    {
        minimums.last!
    }
}
