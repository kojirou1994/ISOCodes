// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Generator",
    platforms: [.macOS(.v10_15)],
    products: [],
    dependencies: [
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.0.0"),
        .package(url: "git@github.com:kojirou1994/Executable.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "Generator",
            dependencies: ["Kanna", "Executable"]),
    ]
)
