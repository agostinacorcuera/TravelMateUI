// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TravelMateUI",
    platforms: [
        .iOS(.v14) 
    ],
    products: [
        .library(
            name: "TravelMateUI",
            targets: ["TravelMateUI"]),
    ],
    targets: [
        .target(
            name: "TravelMateUI",
            dependencies: [],
            path: "Sources",
            resources: []
        ),
        .testTarget(
            name: "TravelMateUITests",
            dependencies: ["TravelMateUI"]),
    ]
)
