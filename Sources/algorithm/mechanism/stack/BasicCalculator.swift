public enum BasicCalculator
{
    public static func solve(_ expression: String) -> Int
    {
        let characters = Array(expression)
        var result = 0
        var number = 0
        var sign = 1
        var stack: [Int] = []
        var index = 0

        while index < characters.count
        {
            let character = characters[index]

            if character.isNumber
            {
                number = 0

                while index < characters.count, characters[index].isNumber
                {
                    number = number * 10 + Int(String(characters[index]))!
                    index += 1
                }

                result += sign * number
                continue
            }

            switch character
            {
            case "+":
                sign = 1
            case "-":
                sign = -1
            case "(":
                stack.append(result)
                stack.append(sign)
                result = 0
                sign = 1
            case ")":
                let previousSign = stack.popLast()!
                let previousResult = stack.popLast()!
                result = previousResult + previousSign * result
            default:
                break
            }

            index += 1
        }

        return result
    }
}
