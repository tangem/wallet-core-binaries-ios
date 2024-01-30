// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TangemWalletCoreBinaries",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "_TangemWalletCoreWrapperDoNotImport",
            targets: ["_TangemWalletCoreWrapperDoNotImport"]
        ),
    ],
    dependencies: [
        .package(path: "../swift-protobuf-binaries"),
    ],
    targets: [
        .target(
            name: "_TangemWalletCoreWrapperDoNotImport",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf-binaries"),
                .byName(name: "WalletCoreBinaries")
            ],
            path: "WalletCore"
        ),
        .binaryTarget(
            name: "WalletCoreBinaries",
            url: "https://github.com/tangem/wallet-core-binaries-ios/releases/download/3.2.4-tangem2/WalletCore.xcframework.zip",
            checksum: "193e7146258da7d6f26fd5156dfd9ffaca5ec947ebb31f0cbb412f2322fab8b7"
        ),
    ]
)
