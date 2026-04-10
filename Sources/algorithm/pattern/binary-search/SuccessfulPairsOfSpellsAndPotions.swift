public enum SuccessfulPairsOfSpellsAndPotions
{
    public static func solve(_ spells: [Int], _ potions: [Int], success: Int64) -> [Int]
    {
        let sortedPotions = potions.sorted()
        let potionCount = sortedPotions.count

        return spells.map
        {
            spell in

            let index = firstSuccessfulPotionIndex(for: spell, in: sortedPotions, success: success)
            return potionCount - index
        }
    }

    private static func firstSuccessfulPotionIndex(for spell: Int, in potions: [Int], success: Int64) -> Int
    {
        var left = 0
        var right = potions.count

        while left < right
        {
            let middle = left + ((right - left) / 2)
            let product = Int64(spell) * Int64(potions[middle])

            if product >= success
            {
                right = middle
            }
            else
            {
                left = middle + 1
            }
        }

        return left
    }
}
