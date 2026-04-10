public enum DecodeString
{
    public static func solve(_ text: String) -> String
    {
        var countStack: [Int] = []
        var stringStack: [String] = []
        var currentNumber = 0
        var currentText = ""

        for character in text
        {
            if character.isNumber
            {
                currentNumber = currentNumber * 10 + Int(String(character))!
            }
            else if character == "["
            {
                countStack.append(currentNumber)
                stringStack.append(currentText)
                currentNumber = 0
                currentText = ""
            }
            else if character == "]"
            {
                let repeatCount = countStack.popLast()!
                let previousText = stringStack.popLast()!
                currentText = previousText + String(repeating: currentText, count: repeatCount)
            }
            else
            {
                currentText.append(character)
            }
        }

        return currentText
    }
}
