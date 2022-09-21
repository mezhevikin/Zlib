// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Zlib",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "Zlib",
            targets: ["Zlib"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Zlib",
            dependencies: []),
        .testTarget(
            name: "ZlibTests",
            dependencies: ["Zlib"]),
    ]
)
