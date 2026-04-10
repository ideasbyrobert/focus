public final class MyHashMap
{
    private let bucketCount = 769
    private var buckets: [[(key: Int, value: Int)]]

    public init()
    {
        buckets = Array(repeating: [], count: bucketCount)
    }

    public func put(_ key: Int, _ value: Int)
    {
        let bucketIndex = index(for: key)

        for entryIndex in buckets[bucketIndex].indices
        {
            if buckets[bucketIndex][entryIndex].key == key
            {
                buckets[bucketIndex][entryIndex].value = value
                return
            }
        }

        buckets[bucketIndex].append((key, value))
    }

    public func get(_ key: Int) -> Int
    {
        let bucketIndex = index(for: key)

        for entry in buckets[bucketIndex]
        {
            if entry.key == key
            {
                return entry.value
            }
        }

        return -1
    }

    public func remove(_ key: Int)
    {
        let bucketIndex = index(for: key)

        for entryIndex in buckets[bucketIndex].indices
        {
            if buckets[bucketIndex][entryIndex].key == key
            {
                buckets[bucketIndex].remove(at: entryIndex)
                return
            }
        }
    }

    private func index(for key: Int) -> Int
    {
        key % bucketCount
    }
}
