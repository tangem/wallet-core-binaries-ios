// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TangemWalletCore",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TangemWalletCore",
            targets: ["TangemWalletCore"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/m3g0byt3/swift-protobuf.git", branch: "enable-library-evolution-mode"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TangemWalletCore",
            dependencies: [
                .target(name: "TangemWalletCoreXCFramework"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ]
        ),
        .binaryTarget(
            name: "TangemWalletCoreXCFramework",
            path: "WalletCore.xcframework"
        ),
    ]
)
