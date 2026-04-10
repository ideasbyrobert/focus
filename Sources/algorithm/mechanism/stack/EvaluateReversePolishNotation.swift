public enum EvaluateReversePolishNotation
{
    public static func solve(_ tokens: [String]) -> Int
    {
        var stack: [Int] = []

        for token in tokens
        {
            switch token
            {
            case "+":
                let right = stack.popLast()!
                let left = stack.popLast()!
                stack.append(left + right)
            case "-":
                let right = stack.popLast()!
                let left = stack.popLast()!
                stack.append(left - right)
            case "*":
                let right = stack.popLast()!
                let left = stack.popLast()!
                stack.append(left * right)
            case "/":
                let right = stack.popLast()!
                let left = stack.popLast()!
                stack.append(left / right)
            default:
                stack.append(Int(token)!)
            }
        }

        return stack.last!
    }
}
