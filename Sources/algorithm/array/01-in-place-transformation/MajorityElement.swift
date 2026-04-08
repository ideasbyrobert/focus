public enum MajorityElement
{
    public static func solve(_ numbers: [Int]) -> Int
    {
        guard let firstNumber = numbers.first else
        {
            return 0
        }

        var candidate = firstNumber
        var balance = 0

        for number in numbers
        {
            if balance == 0
            {
                candidate = number
            }

            if number == candidate
            {
                balance += 1
            }
            else
            {
                balance -= 1
            }
        }

        return candidate
    }
}
