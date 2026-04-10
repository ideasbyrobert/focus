public enum ProductOfArrayExceptSelf
{
    public static func solve(_ numbers: [Int]) -> [Int]
    {
        guard !numbers.isEmpty else
        {
            return []
        }

        var result = Array(repeating: 1, count: numbers.count)
        var prefixProduct = 1

        for index in numbers.indices
        {
            result[index] = prefixProduct
            prefixProduct *= numbers[index]
        }

        var suffixProduct = 1

        for index in numbers.indices.reversed()
        {
            result[index] *= suffixProduct
            suffixProduct *= numbers[index]
        }

        return result
    }
}
