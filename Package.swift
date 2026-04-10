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
            name: "AlgorithmHash",
            targets: ["AlgorithmHash"]
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
            name: "AlgorithmSlidingWindow",
            targets: ["AlgorithmSlidingWindow"]
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
            name: "AlgorithmMathFluency",
            targets: ["AlgorithmMathFluency"]
        ),
        .library(
            name: "AlgorithmPriorityQueue",
            targets: ["AlgorithmPriorityQueue"]
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
            name: "AlgorithmHash",
            path: "Sources/algorithm/mechanism/hash"
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
            path: "Sources/algorithm/pattern/sorting/01-sorting-and-two-pointer"
        ),
        .target(
            name: "AlgorithmSortingAndInterval",
            path: "Sources/algorithm/pattern/sorting/02-sorting-and-interval"
        ),
        .target(
            name: "AlgorithmPrefixSum",
            path: "Sources/algorithm/pattern/prefix-sum"
        ),
        .target(
            name: "AlgorithmRecursionAndBinaryTree",
            path: "Sources/algorithm/pattern/recursion/01-binary-tree"
        ),
        .target(
            name: "AlgorithmDivideAndConquer",
            path: "Sources/algorithm/pattern/recursion/03-divide-and-conquer"
        ),
        .target(
            name: "AlgorithmBinarySearch",
            path: "Sources/algorithm/pattern/binary-search"
        ),
        .target(
            name: "AlgorithmSlidingWindow",
            path: "Sources/algorithm/pattern/sliding-window"
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
            path: "Sources/algorithm/pattern/recursion/02-backtracking"
        ),
        .target(
            name: "AlgorithmMathAndBit",
            path: "Sources/algorithm/pattern/mathematics/02-math-and-bit"
        ),
        .target(
            name: "AlgorithmMathAndArray",
            path: "Sources/algorithm/pattern/mathematics/01-math-and-array"
        ),
        .target(
            name: "AlgorithmMathFluency",
            path: "Sources/algorithm/pattern/mathematics/03-math-fluency"
        ),
        .target(
            name: "AlgorithmPriorityQueue",
            path: "Sources/algorithm/mechanism/priority-queue"
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
            name: "AlgorithmHashTests",
            dependencies: ["AlgorithmHash"],
            path: "Tests/algorithm/mechanism/hash"
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
            path: "Tests/algorithm/pattern/sorting/01-sorting-and-two-pointer"
        ),
        .testTarget(
            name: "AlgorithmSortingAndIntervalTests",
            dependencies: ["AlgorithmSortingAndInterval"],
            path: "Tests/algorithm/pattern/sorting/02-sorting-and-interval"
        ),
        .testTarget(
            name: "AlgorithmPrefixSumTests",
            dependencies: ["AlgorithmPrefixSum"],
            path: "Tests/algorithm/pattern/prefix-sum"
        ),
        .testTarget(
            name: "AlgorithmRecursionAndBinaryTreeTests",
            dependencies: ["AlgorithmRecursionAndBinaryTree"],
            path: "Tests/algorithm/pattern/recursion/01-binary-tree"
        ),
        .testTarget(
            name: "AlgorithmDivideAndConquerTests",
            dependencies: ["AlgorithmDivideAndConquer"],
            path: "Tests/algorithm/pattern/recursion/03-divide-and-conquer"
        ),
        .testTarget(
            name: "AlgorithmBinarySearchTests",
            dependencies: ["AlgorithmBinarySearch"],
            path: "Tests/algorithm/pattern/binary-search"
        ),
        .testTarget(
            name: "AlgorithmSlidingWindowTests",
            dependencies: ["AlgorithmSlidingWindow"],
            path: "Tests/algorithm/pattern/sliding-window"
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
            path: "Tests/algorithm/pattern/recursion/02-backtracking"
        ),
        .testTarget(
            name: "AlgorithmMathAndBitTests",
            dependencies: ["AlgorithmMathAndBit"],
            path: "Tests/algorithm/pattern/mathematics/02-math-and-bit"
        ),
        .testTarget(
            name: "AlgorithmMathAndArrayTests",
            dependencies: ["AlgorithmMathAndArray"],
            path: "Tests/algorithm/pattern/mathematics/01-math-and-array"
        ),
        .testTarget(
            name: "AlgorithmMathFluencyTests",
            dependencies: ["AlgorithmMathFluency"],
            path: "Tests/algorithm/pattern/mathematics/03-math-fluency"
        ),
        .testTarget(
            name: "AlgorithmPriorityQueueTests",
            dependencies: ["AlgorithmPriorityQueue"],
            path: "Tests/algorithm/mechanism/priority-queue"
        ),
    ],
    swiftLanguageModes: [.v6]
)
