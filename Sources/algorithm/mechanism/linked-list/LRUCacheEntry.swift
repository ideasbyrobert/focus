final class LRUCacheEntry
{
    let key: Int
    var value: Int
    var previous: LRUCacheEntry?
    var next: LRUCacheEntry?

    init(key: Int, value: Int)
    {
        self.key = key
        self.value = value
    }
}
