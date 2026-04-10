@testable import AlgorithmLinkedList

func buildList(_ values: [Int]) -> ListNode?
{
    let dummy = ListNode(0)
    var tail = dummy

    for value in values
    {
        tail.next = ListNode(value)
        tail = tail.next!
    }

    return dummy.next
}

func listValues(from head: ListNode?) -> [Int]
{
    var values: [Int] = []
    var current = head

    while current != nil
    {
        values.append(current!.value)
        current = current?.next
    }

    return values
}

func buildCyclicList(_ values: [Int], cycleAt index: Int?) -> ListNode?
{
    guard !values.isEmpty else
    {
        return nil
    }

    let nodes = values.map
    {
        ListNode($0)
    }

    for index in 0..<(nodes.count - 1)
    {
        nodes[index].next = nodes[index + 1]
    }

    if let index, nodes.indices.contains(index)
    {
        nodes[nodes.count - 1].next = nodes[index]
    }

    return nodes.first
}

func buildRandomList(_ descriptors: [(Int, Int?)]) -> RandomListNode?
{
    guard !descriptors.isEmpty else
    {
        return nil
    }

    let nodes = descriptors.map
    {
        RandomListNode($0.0)
    }

    for index in 0..<(nodes.count - 1)
    {
        nodes[index].next = nodes[index + 1]
    }

    for (index, descriptor) in descriptors.enumerated()
    {
        if let randomIndex = descriptor.1, nodes.indices.contains(randomIndex)
        {
            nodes[index].random = nodes[randomIndex]
        }
    }

    return nodes.first
}

func randomListNodes(from head: RandomListNode?) -> [RandomListNode]
{
    var nodes: [RandomListNode] = []
    var current = head

    while current != nil
    {
        nodes.append(current!)
        current = current?.next
    }

    return nodes
}

func randomListSnapshot(from head: RandomListNode?) -> [String]
{
    let nodes = randomListNodes(from: head)
    var indicesByIdentity: [ObjectIdentifier: Int] = [:]

    for (index, node) in nodes.enumerated()
    {
        indicesByIdentity[ObjectIdentifier(node)] = index
    }

    return nodes.map
    {
        node in

        let randomIndex = node.random.flatMap
        {
            indicesByIdentity[ObjectIdentifier($0)]
        }

        return "\(node.value):\(randomIndex.map(String.init) ?? "nil")"
    }
}
