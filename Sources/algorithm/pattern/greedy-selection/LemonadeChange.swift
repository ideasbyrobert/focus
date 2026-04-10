public enum LemonadeChange
{
    public static func solve(_ bills: [Int]) -> Bool
    {
        var fiveDollarBills = 0
        var tenDollarBills = 0

        for bill in bills
        {
            switch bill
            {
            case 5:
                fiveDollarBills += 1

            case 10:
                guard fiveDollarBills > 0 else
                {
                    return false
                }

                fiveDollarBills -= 1
                tenDollarBills += 1

            case 20:
                if tenDollarBills > 0 && fiveDollarBills > 0
                {
                    tenDollarBills -= 1
                    fiveDollarBills -= 1
                }
                else if fiveDollarBills >= 3
                {
                    fiveDollarBills -= 3
                }
                else
                {
                    return false
                }

            default:
                return false
            }
        }

        return true
    }
}
