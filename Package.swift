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
            name: "AlgorithmStackAndQueue",
            targets: ["AlgorithmStackAndQueue"]
        ),
        .library(
            name: "AlgorithmTree",
            targets: ["AlgorithmTree"]
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
            name: "AlgorithmStackAndQueue",
            path: "Sources/algorithm/mechanism/stack-and-queue"
        ),
        .target(
            name: "AlgorithmTree",
            path: "Sources/algorithm/mechanism/tree"
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
            name: "AlgorithmStackAndQueueTests",
            dependencies: ["AlgorithmStackAndQueue"],
            path: "Tests/algorithm/mechanism/stack-and-queue"
        ),
        .testTarget(
            name: "AlgorithmTreeTests",
            dependencies: ["AlgorithmTree"],
            path: "Tests/algorithm/mechanism/tree"
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
    ],
    swiftLanguageModes: [.v6]
)
