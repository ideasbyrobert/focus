public enum LetterCombinationsOfAPhoneNumber
{
    public static func solve(_ digits: String) -> [String]
    {
        guard !digits.isEmpty else
        {
            return []
        }

        let lettersByDigit: [Character: [Character]] = [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"],
        ]

        let digitArray = Array(digits)
        var combinations: [String] = []
        var path: [Character] = []

        func backtrack(_ index: Int)
        {
            if index == digitArray.count
            {
                combinations.append(String(path))
                return
            }

            guard let letters = lettersByDigit[digitArray[index]] else
            {
                return
            }

            for letter in letters
            {
                path.append(letter)
                backtrack(index + 1)
                path.removeLast()
            }
        }

        backtrack(0)

        return combinations
    }
}
