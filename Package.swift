// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ISOCodes",
    products: [
        .library(
            name: "ISOCodes",
            targets: ["ISOCodes"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ISOCodes",
            dependencies: []),
        .testTarget(
            name: "ISOCodesTests",
            dependencies: ["ISOCodes"]),
    ]
)
