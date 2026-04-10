public enum MinimumGeneticMutation
{
    public static func solve(_ startGene: String, _ endGene: String, _ bank: [String]) -> Int
    {
        let bankSet = Set(bank)

        guard bankSet.contains(endGene) else
        {
            return -1
        }

        var queue = [(gene: startGene, steps: 0)]
        var index = 0
        var visited: Set<String> = [startGene]

        while index < queue.count
        {
            let current = queue[index]
            index += 1

            if current.gene == endGene
            {
                return current.steps
            }

            for mutation in mutations(from: current.gene)
            {
                if !bankSet.contains(mutation) || !visited.insert(mutation).inserted
                {
                    continue
                }

                queue.append((mutation, current.steps + 1))
            }
        }

        return -1
    }

    private static func mutations(from gene: String) -> [String]
    {
        var results: [String] = []
        let characters = Array(gene)

        for index in characters.indices
        {
            for nucleotide in nucleotides
            {
                if characters[index] == nucleotide
                {
                    continue
                }

                var candidate = characters
                candidate[index] = nucleotide
                results.append(String(candidate))
            }
        }

        return results
    }

    private static let nucleotides: [Character] = ["A", "C", "G", "T"]
}
