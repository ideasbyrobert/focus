// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "focus",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "CodeTour",
            targets: ["CodeTour"]
        ),
        .library(
            name: "CodeGuideTheBasics",
            targets: ["CodeGuideTheBasics"]
        ),
        .library(
            name: "AlgorithmArray",
            targets: ["AlgorithmArray"]
        ),
        .library(
            name: "AlgorithmLinkedList",
            targets: ["AlgorithmLinkedList"]
        ),
        .library(
            name: "AlgorithmHashMap",
            targets: ["AlgorithmHashMap"]
        ),
        .library(
            name: "AlgorithmStack",
            targets: ["AlgorithmStack"]
        ),
        .library(
            name: "AlgorithmQueue",
            targets: ["AlgorithmQueue"]
        ),
        .library(
            name: "AlgorithmTree",
            targets: ["AlgorithmTree"]
        ),
        .library(
            name: "AlgorithmGraph",
            targets: ["AlgorithmGraph"]
        ),
        .library(
            name: "AlgorithmMonotonicStack",
            targets: ["AlgorithmMonotonicStack"]
        ),
        .library(
            name: "AlgorithmSortingAndTwoPointer",
            targets: ["AlgorithmSortingAndTwoPointer"]
        ),
        .library(
            name: "AlgorithmSortingAndInterval",
            targets: ["AlgorithmSortingAndInterval"]
        ),
        .library(
            name: "AlgorithmPrefixSum",
            targets: ["AlgorithmPrefixSum"]
        ),
        .library(
            name: "AlgorithmRecursionAndBinaryTree",
            targets: ["AlgorithmRecursionAndBinaryTree"]
        ),
        .library(
            name: "AlgorithmDivideAndConquer",
            targets: ["AlgorithmDivideAndConquer"]
        ),
        .library(
            name: "AlgorithmBinarySearch",
            targets: ["AlgorithmBinarySearch"]
        ),
        .library(
            name: "AlgorithmDynamicProgramming",
            targets: ["AlgorithmDynamicProgramming"]
        ),
        .library(
            name: "AlgorithmGreedySelection",
            targets: ["AlgorithmGreedySelection"]
        ),
        .library(
            name: "AlgorithmBacktracking",
            targets: ["AlgorithmBacktracking"]
        ),
        .library(
            name: "AlgorithmMathAndBit",
            targets: ["AlgorithmMathAndBit"]
        ),
        .library(
            name: "AlgorithmMathAndArray",
            targets: ["AlgorithmMathAndArray"]
        ),
        .library(
            name: "AlgorithmHeap",
            targets: ["AlgorithmHeap"]
        ),
    ],
    targets: [
        .target(
            name: "CodeTour",
            path: "Sources/code/tour"
        ),
        .target(
            name: "CodeGuideTheBasics",
            path: "Sources/code/guide/the-basics"
        ),
        .target(
            name: "AlgorithmArray",
            path: "Sources/algorithm/mechanism/array"
        ),
        .target(
            name: "AlgorithmLinkedList",
            path: "Sources/algorithm/mechanism/linked-list"
        ),
        .target(
            name: "AlgorithmHashMap",
            path: "Sources/algorithm/mechanism/hash-map"
        ),
        .target(
            name: "AlgorithmStack",
            path: "Sources/algorithm/mechanism/stack"
        ),
        .target(
            name: "AlgorithmQueue",
            path: "Sources/algorithm/mechanism/queue"
        ),
        .target(
            name: "AlgorithmTree",
            path: "Sources/algorithm/mechanism/tree"
        ),
        .target(
            name: "AlgorithmGraph",
            path: "Sources/algorithm/mechanism/graph"
        ),
        .target(
            name: "AlgorithmMonotonicStack",
            path: "Sources/algorithm/pattern/monotonic-stack"
        ),
        .target(
            name: "AlgorithmSortingAndTwoPointer",
            path: "Sources/algorithm/pattern/sorting-and-two-pointer"
        ),
        .target(
            name: "AlgorithmSortingAndInterval",
            path: "Sources/algorithm/pattern/sorting-and-interval"
        ),
        .target(
            name: "AlgorithmPrefixSum",
            path: "Sources/algorithm/pattern/prefix-sum"
        ),
        .target(
            name: "AlgorithmRecursionAndBinaryTree",
            path: "Sources/algorithm/pattern/recursion-and-binary-tree"
        ),
        .target(
            name: "AlgorithmDivideAndConquer",
            path: "Sources/algorithm/pattern/divide-and-conquer"
        ),
        .target(
            name: "AlgorithmBinarySearch",
            path: "Sources/algorithm/pattern/binary-search"
        ),
        .target(
            name: "AlgorithmDynamicProgramming",
            path: "Sources/algorithm/pattern/dynamic-programming"
        ),
        .target(
            name: "AlgorithmGreedySelection",
            path: "Sources/algorithm/pattern/greedy-selection"
        ),
        .target(
            name: "AlgorithmBacktracking",
            path: "Sources/algorithm/pattern/backtracking"
        ),
        .target(
            name: "AlgorithmMathAndBit",
            path: "Sources/algorithm/pattern/math-and-bit"
        ),
        .target(
            name: "AlgorithmMathAndArray",
            path: "Sources/algorithm/pattern/math-and-array"
        ),
        .target(
            name: "AlgorithmHeap",
            path: "Sources/algorithm/mechanism/heap"
        ),
        .testTarget(
            name: "CodeTourTests",
            dependencies: ["CodeTour"],
            path: "Tests/code/tour",
            resources: [
                .copy("_support/Fixtures"),
            ]
        ),
        .testTarget(
            name: "CodeGuideTheBasicsTests",
            dependencies: ["CodeGuideTheBasics"],
            path: "Tests/code/guide/the-basics",
            resources: [
                .copy("_support/Fixtures"),
            ]
        ),
        .testTarget(
            name: "AlgorithmArrayTests",
            dependencies: ["AlgorithmArray"],
            path: "Tests/algorithm/mechanism/array"
        ),
        .testTarget(
            name: "AlgorithmLinkedListTests",
            dependencies: ["AlgorithmLinkedList"],
            path: "Tests/algorithm/mechanism/linked-list"
        ),
        .testTarget(
            name: "AlgorithmHashMapTests",
            dependencies: ["AlgorithmHashMap"],
            path: "Tests/algorithm/mechanism/hash-map"
        ),
        .testTarget(
            name: "AlgorithmStackTests",
            dependencies: ["AlgorithmStack"],
            path: "Tests/algorithm/mechanism/stack"
        ),
        .testTarget(
            name: "AlgorithmQueueTests",
            dependencies: ["AlgorithmQueue"],
            path: "Tests/algorithm/mechanism/queue"
        ),
        .testTarget(
            name: "AlgorithmTreeTests",
            dependencies: ["AlgorithmTree"],
            path: "Tests/algorithm/mechanism/tree"
        ),
        .testTarget(
            name: "AlgorithmGraphTests",
            dependencies: ["AlgorithmGraph"],
            path: "Tests/algorithm/mechanism/graph"
        ),
        .testTarget(
            name: "AlgorithmMonotonicStackTests",
            dependencies: ["AlgorithmMonotonicStack"],
            path: "Tests/algorithm/pattern/monotonic-stack"
        ),
        .testTarget(
            name: "AlgorithmSortingAndTwoPointerTests",
            dependencies: ["AlgorithmSortingAndTwoPointer"],
            path: "Tests/algorithm/pattern/sorting-and-two-pointer"
        ),
        .testTarget(
            name: "AlgorithmSortingAndIntervalTests",
            dependencies: ["AlgorithmSortingAndInterval"],
            path: "Tests/algorithm/pattern/sorting-and-interval"
        ),
        .testTarget(
            name: "AlgorithmPrefixSumTests",
            dependencies: ["AlgorithmPrefixSum"],
            path: "Tests/algorithm/pattern/prefix-sum"
        ),
        .testTarget(
            name: "AlgorithmRecursionAndBinaryTreeTests",
            dependencies: ["AlgorithmRecursionAndBinaryTree"],
            path: "Tests/algorithm/pattern/recursion-and-binary-tree"
        ),
        .testTarget(
            name: "AlgorithmDivideAndConquerTests",
            dependencies: ["AlgorithmDivideAndConquer"],
            path: "Tests/algorithm/pattern/divide-and-conquer"
        ),
        .testTarget(
            name: "AlgorithmBinarySearchTests",
            dependencies: ["AlgorithmBinarySearch"],
            path: "Tests/algorithm/pattern/binary-search"
        ),
        .testTarget(
            name: "AlgorithmDynamicProgrammingTests",
            dependencies: ["AlgorithmDynamicProgramming"],
            path: "Tests/algorithm/pattern/dynamic-programming"
        ),
        .testTarget(
            name: "AlgorithmGreedySelectionTests",
            dependencies: ["AlgorithmGreedySelection"],
            path: "Tests/algorithm/pattern/greedy-selection"
        ),
        .testTarget(
            name: "AlgorithmBacktrackingTests",
            dependencies: ["AlgorithmBacktracking"],
            path: "Tests/algorithm/pattern/backtracking"
        ),
        .testTarget(
            name: "AlgorithmMathAndBitTests",
            dependencies: ["AlgorithmMathAndBit"],
            path: "Tests/algorithm/pattern/math-and-bit"
        ),
        .testTarget(
            name: "AlgorithmMathAndArrayTests",
            dependencies: ["AlgorithmMathAndArray"],
            path: "Tests/algorithm/pattern/math-and-array"
        ),
        .testTarget(
            name: "AlgorithmHeapTests",
            dependencies: ["AlgorithmHeap"],
            path: "Tests/algorithm/mechanism/heap"
        ),
    ],
    swiftLanguageModes: [.v6]
)
