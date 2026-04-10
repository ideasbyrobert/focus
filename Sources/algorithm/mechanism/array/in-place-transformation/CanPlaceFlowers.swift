public enum CanPlaceFlowers
{
    public static func solve(_ flowerbed: [Int], newFlowers flowerCount: Int) -> Bool
    {
        if flowerCount == 0
        {
            return true
        }

        var remainingFlowers = flowerCount
        var layout = flowerbed

        for index in layout.indices
        {
            if layout[index] == 1
            {
                continue
            }

            let leftIsEmpty = index == layout.startIndex || layout[layout.index(before: index)] == 0
            let rightIsEmpty = index == layout.index(before: layout.endIndex) || layout[layout.index(after: index)] == 0

            if leftIsEmpty && rightIsEmpty
            {
                layout[index] = 1
                remainingFlowers -= 1

                if remainingFlowers == 0
                {
                    return true
                }
            }
        }

        return remainingFlowers <= 0
    }
}
