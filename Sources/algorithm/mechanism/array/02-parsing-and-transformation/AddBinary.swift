public enum AddBinary
{
    public static func solve(_ first: String, _ second: String) -> String
    {
        let firstCharacters = Array(first)
        let secondCharacters = Array(second)
        var firstIndex = firstCharacters.count
        var secondIndex = secondCharacters.count
        var carry = 0
        var reversedResult: [Character] = []

        while firstIndex > 0 || secondIndex > 0 || carry > 0
        {
            let firstBit = firstIndex > 0 ? bitValue(of: firstCharacters[firstIndex - 1]) : 0
            let secondBit = secondIndex > 0 ? bitValue(of: secondCharacters[secondIndex - 1]) : 0
            let sum = firstBit + secondBit + carry

            reversedResult.append(sum % 2 == 0 ? "0" : "1")
            carry = sum / 2

            if firstIndex > 0
            {
                firstIndex -= 1
            }

            if secondIndex > 0
            {
                secondIndex -= 1
            }
        }

        return String(reversedResult.reversed())
    }

    private static func bitValue(of character: Character) -> Int
    {
        character == "1" ? 1 : 0
    }
}
