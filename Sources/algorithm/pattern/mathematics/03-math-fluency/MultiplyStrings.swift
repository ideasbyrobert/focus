public enum MultiplyStrings
{
    public static func solve(_ first: String, _ second: String) -> String
    {
        if first == "0" || second == "0"
        {
            return "0"
        }

        let firstDigits = digits(in: first)
        let secondDigits = digits(in: second)
        var product = Array(repeating: 0, count: firstDigits.count + secondDigits.count)

        for firstIndex in stride(from: firstDigits.count - 1, through: 0, by: -1)
        {
            for secondIndex in stride(from: secondDigits.count - 1, through: 0, by: -1)
            {
                let multiplication = firstDigits[firstIndex] * secondDigits[secondIndex]
                let lowIndex = firstIndex + secondIndex + 1
                let highIndex = firstIndex + secondIndex
                let sum = multiplication + product[lowIndex]

                product[lowIndex] = sum % 10
                product[highIndex] += sum / 10
            }
        }

        var result = ""
        var started = false

        for digit in product
        {
            if digit != 0 || started
            {
                result.append(String(digit))
                started = true
            }
        }

        return result
    }

    private static func digits(in string: String) -> [Int]
    {
        return string.compactMap { character in
            Int(String(character))
        }
    }
}
