public enum Dota2Senate
{
    public static func solve(_ senate: String) -> String
    {
        let senators = Array(senate)
        var radiantQueue: [Int] = []
        var direQueue: [Int] = []

        for (index, senator) in senators.enumerated()
        {
            if senator == "R"
            {
                radiantQueue.append(index)
            }
            else
            {
                direQueue.append(index)
            }
        }

        while !radiantQueue.isEmpty && !direQueue.isEmpty
        {
            let radiantIndex = radiantQueue.removeFirst()
            let direIndex = direQueue.removeFirst()

            if radiantIndex < direIndex
            {
                radiantQueue.append(radiantIndex + senators.count)
            }
            else
            {
                direQueue.append(direIndex + senators.count)
            }
        }

        return radiantQueue.isEmpty ? "Dire" : "Radiant"
    }
}
