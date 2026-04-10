struct Heap<Element>
{
    private var elements: [Element]
    private let areSorted: (Element, Element) -> Bool

    init(sort: @escaping (Element, Element) -> Bool)
    {
        elements = []
        areSorted = sort
    }

    init(elements: [Element], sort: @escaping (Element, Element) -> Bool)
    {
        self.elements = elements
        areSorted = sort

        if !self.elements.isEmpty
        {
            for index in stride(from: (self.elements.count / 2) - 1, through: 0, by: -1)
            {
                siftDown(from: index)
            }
        }
    }

    var isEmpty: Bool
    {
        elements.isEmpty
    }

    var count: Int
    {
        elements.count
    }

    func peek() -> Element?
    {
        elements.first
    }

    mutating func insert(_ element: Element)
    {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }

    mutating func remove() -> Element?
    {
        guard !elements.isEmpty else
        {
            return nil
        }

        if elements.count == 1
        {
            return elements.removeLast()
        }

        let root = elements[0]
        elements[0] = elements.removeLast()
        siftDown(from: 0)

        return root
    }

    private mutating func siftUp(from index: Int)
    {
        var childIndex = index
        var parentIndex = parentIndex(of: childIndex)

        while childIndex > 0 && areSorted(elements[childIndex], elements[parentIndex])
        {
            elements.swapAt(childIndex, parentIndex)
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }
    }

    private mutating func siftDown(from index: Int)
    {
        var parentIndex = index

        while true
        {
            let leftIndex = leftChildIndex(of: parentIndex)
            let rightIndex = rightChildIndex(of: parentIndex)
            var candidateIndex = parentIndex

            if leftIndex < elements.count && areSorted(elements[leftIndex], elements[candidateIndex])
            {
                candidateIndex = leftIndex
            }

            if rightIndex < elements.count && areSorted(elements[rightIndex], elements[candidateIndex])
            {
                candidateIndex = rightIndex
            }

            if candidateIndex == parentIndex
            {
                return
            }

            elements.swapAt(parentIndex, candidateIndex)
            parentIndex = candidateIndex
        }
    }

    private func parentIndex(of index: Int) -> Int
    {
        (index - 1) / 2
    }

    private func leftChildIndex(of index: Int) -> Int
    {
        (2 * index) + 1
    }

    private func rightChildIndex(of index: Int) -> Int
    {
        (2 * index) + 2
    }
}
