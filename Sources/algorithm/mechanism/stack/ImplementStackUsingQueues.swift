public final class MyStack
{
    private var primary: [Int] = []
    private var secondary: [Int] = []

    public init()
    {
    }

    public func push(_ value: Int)
    {
        secondary.append(value)

        while !primary.isEmpty
        {
            secondary.append(primary.removeFirst())
        }

        swap(&primary, &secondary)
    }

    public func pop() -> Int
    {
        primary.removeFirst()
    }

    public func top() -> Int
    {
        primary.first!
    }

    public func empty() -> Bool
    {
        primary.isEmpty
    }
}
