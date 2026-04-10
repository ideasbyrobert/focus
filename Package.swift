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
            name: "AlgorithmSortAndTwoPointer",
            targets: ["AlgorithmSortAndTwoPointer"]
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
            name: "AlgorithmSortAndTwoPointer",
            path: "Sources/algorithm/pattern/sort-and-two-pointer"
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
            name: "AlgorithmSortAndTwoPointerTests",
            dependencies: ["AlgorithmSortAndTwoPointer"],
            path: "Tests/algorithm/pattern/sort-and-two-pointer"
        ),
    ],
    swiftLanguageModes: [.v6]
)
