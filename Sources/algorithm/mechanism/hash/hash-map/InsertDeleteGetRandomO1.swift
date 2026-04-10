public final class RandomizedSet
{
    private var values: [Int] = []
    private var indicesByValue: [Int: Int] = [:]

    public init()
    {
    }

    public func insert(_ value: Int) -> Bool
    {
        guard indicesByValue[value] == nil else
        {
            return false
        }

        indicesByValue[value] = values.count
        values.append(value)

        return true
    }

    public func remove(_ value: Int) -> Bool
    {
        guard let index = indicesByValue[value] else
        {
            return false
        }

        let lastValue = values[values.count - 1]
        values[index] = lastValue
        indicesByValue[lastValue] = index
        values.removeLast()
        indicesByValue.removeValue(forKey: value)

        return true
    }

    public func getRandom() -> Int
    {
        values[Int.random(in: 0..<values.count)]
    }
}
