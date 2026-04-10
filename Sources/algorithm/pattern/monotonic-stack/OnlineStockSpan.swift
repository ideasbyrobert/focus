public final class StockSpanner
{
    private var stack: [(price: Int, span: Int)] = []

    public init()
    {
    }

    public func next(_ price: Int) -> Int
    {
        var span = 1

        while let last = stack.last, last.price <= price
        {
            span += last.span
            _ = stack.popLast()
        }

        stack.append((price, span))

        return span
    }
}
