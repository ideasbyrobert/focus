public final class RandomListNode
{
    public var value: Int
    public var next: RandomListNode?
    public var random: RandomListNode?

    public init(_ value: Int, next: RandomListNode? = nil, random: RandomListNode? = nil)
    {
        self.value = value
        self.next = next
        self.random = random
    }
}
