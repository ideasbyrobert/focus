public enum IntegerToEnglishWords
{
    public static func solve(_ number: Int) -> String
    {
        if number == 0
        {
            return "Zero"
        }

        var remaining = number
        var groupIndex = 0
        var parts: [String] = []

        while remaining > 0
        {
            let groupValue = remaining % 1_000

            if groupValue > 0
            {
                var groupWords = words(for: groupValue)
                let scaleWord = scaleWords[groupIndex]

                if !scaleWord.isEmpty
                {
                    groupWords += " " + scaleWord
                }

                parts.insert(groupWords, at: 0)
            }

            remaining /= 1_000
            groupIndex += 1
        }

        return parts.joined(separator: " ")
    }

    private static let belowTwenty = [
        "",
        "One",
        "Two",
        "Three",
        "Four",
        "Five",
        "Six",
        "Seven",
        "Eight",
        "Nine",
        "Ten",
        "Eleven",
        "Twelve",
        "Thirteen",
        "Fourteen",
        "Fifteen",
        "Sixteen",
        "Seventeen",
        "Eighteen",
        "Nineteen",
    ]

    private static let tensWords = [
        "",
        "",
        "Twenty",
        "Thirty",
        "Forty",
        "Fifty",
        "Sixty",
        "Seventy",
        "Eighty",
        "Ninety",
    ]

    private static let scaleWords = [
        "",
        "Thousand",
        "Million",
        "Billion",
    ]

    private static func words(for number: Int) -> String
    {
        if number == 0
        {
            return ""
        }

        if number < 20
        {
            return belowTwenty[number]
        }

        if number < 100
        {
            let tensPart = tensWords[number / 10]
            let remainder = number % 10

            if remainder == 0
            {
                return tensPart
            }

            return tensPart + " " + words(for: remainder)
        }

        let hundredsPart = belowTwenty[number / 100] + " Hundred"
        let remainder = number % 100

        if remainder == 0
        {
            return hundredsPart
        }

        return hundredsPart + " " + words(for: remainder)
    }
}
