public struct Refrigerator
{
    public private(set) var isOpen: Bool
    public let contents: [String]

    public init(contents: [String] = fridgeContent)
    {
        isOpen = false
        self.contents = contents
    }

    public mutating func contains(_ food: String) -> Bool
    {
        isOpen = true

        defer
        {
            isOpen = false
        }

        return contents.contains(food)
    }
}
