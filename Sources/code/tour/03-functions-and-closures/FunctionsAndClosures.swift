public func greet(person: String, day: String) -> String
{
    "Hello \(person), today is \(day)."
}

public func greet(person: String, day: String, lunchSpecial: String) -> String
{
    "Hello \(person), today is \(day), and lunch is \(lunchSpecial)."
}

public func greet(_ person: String, on day: String) -> String
{
    "Hello \(person), today is \(day)."
}

public func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int)
{
    var minimum = scores[0]
    var maximum = scores[0]
    var sum = 0

    for score in scores
    {
        if score > maximum
        {
            maximum = score
        }
        else if score < minimum
        {
            minimum = score
        }

        sum += score
    }

    return (minimum, maximum, sum)
}

public func returnFifteen() -> Int
{
    var value = 10

    func add()
    {
        value += 5
    }

    add()

    return value
}

public func makeIncrementer() -> ((Int) -> Int)
{
    func addOne(number: Int) -> Int
    {
        1 + number
    }

    return addOne
}

public func lessThanTen(number: Int) -> Bool
{
    number < 10
}

public func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool
{
    for item in list
    {
        if condition(item)
        {
            return true
        }
    }

    return false
}

public func mappedNumbers(from numbers: [Int]) -> [Int]
{
    numbers.map
    {
        number in

        3 * number
    }
}

public func zeroedOddNumbers(from numbers: [Int]) -> [Int]
{
    numbers.map
    {
        number in

        number.isMultiple(of: 2) ? number : 0
    }
}

public func sortedNumbers(from numbers: [Int]) -> [Int]
{
    numbers.sorted
    {
        $0 > $1
    }
}
