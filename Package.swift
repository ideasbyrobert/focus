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
    ],
    swiftLanguageModes: [.v6]
)
