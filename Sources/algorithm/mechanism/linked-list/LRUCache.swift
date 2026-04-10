public final class LRUCache
{
    private let capacity: Int
    private var entriesByKey: [Int: LRUCacheEntry] = [:]
    private let head = LRUCacheEntry(key: 0, value: 0)
    private let tail = LRUCacheEntry(key: 0, value: 0)

    public init(_ capacity: Int)
    {
        self.capacity = max(capacity, 0)
        head.next = tail
        tail.previous = head
    }

    public func get(_ key: Int) -> Int
    {
        guard let entry = entriesByKey[key] else
        {
            return -1
        }

        moveToFront(entry)

        return entry.value
    }

    public func put(_ key: Int, _ value: Int)
    {
        guard capacity > 0 else
        {
            return
        }

        if let entry = entriesByKey[key]
        {
            entry.value = value
            moveToFront(entry)

            return
        }

        let entry = LRUCacheEntry(key: key, value: value)
        entriesByKey[key] = entry
        insertAfterHead(entry)

        if entriesByKey.count > capacity
        {
            evictLeastRecentlyUsed()
        }
    }

    private func moveToFront(_ entry: LRUCacheEntry)
    {
        remove(entry)
        insertAfterHead(entry)
    }

    private func insertAfterHead(_ entry: LRUCacheEntry)
    {
        entry.next = head.next
        entry.previous = head
        head.next?.previous = entry
        head.next = entry
    }

    private func remove(_ entry: LRUCacheEntry)
    {
        entry.previous?.next = entry.next
        entry.next?.previous = entry.previous
        entry.previous = nil
        entry.next = nil
    }

    private func evictLeastRecentlyUsed()
    {
        guard let leastRecentlyUsed = tail.previous, leastRecentlyUsed !== head else
        {
            return
        }

        remove(leastRecentlyUsed)
        entriesByKey.removeValue(forKey: leastRecentlyUsed.key)
    }
}
