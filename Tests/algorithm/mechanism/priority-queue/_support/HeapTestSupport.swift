@testable import AlgorithmPriorityQueue

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

    while let node = current
    {
        values.append(node.value)
        current = node.next
    }

    return values
}
