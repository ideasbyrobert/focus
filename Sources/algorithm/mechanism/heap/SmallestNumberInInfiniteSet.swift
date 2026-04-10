public final class SmallestInfiniteSet
{
    private var nextNumber = 1
    private var addedBackNumbers = Set<Int>()
    private var heap = Heap<Int>(sort: <)

    public init()
    {
    }

    public func popSmallest() -> Int
    {
        if let smallest = heap.remove()
        {
            addedBackNumbers.remove(smallest)
            return smallest
        }

        let smallest = nextNumber
        nextNumber += 1

        return smallest
    }

    public func addBack(_ number: Int)
    {
        guard number < nextNumber else
        {
            return
        }

        if addedBackNumbers.insert(number).inserted
        {
            heap.insert(number)
        }
    }
}
