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
            name: "TangemWalletCoreBinaries",
            targets: ["TangemWalletCoreBinaries"]
        ),
        .library(
            name: "SwiftProtobuf",
            targets: ["SwiftProtobufBinaries"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TangemWalletCoreBinaries",
            url: "https://github.com/tangem/wallet-core-binaries-ios/releases/download/3.2.4-tangem2/WalletCore.xcframework.zip",
            checksum: "193e7146258da7d6f26fd5156dfd9ffaca5ec947ebb31f0cbb412f2322fab8b7"
        ),
        .binaryTarget(
            name: "SwiftProtobufBinaries",
            url: "https://github.com/tangem/wallet-core-binaries-ios/releases/download/3.2.4-tangem2/SwiftProtobuf.xcframework.zip",
            checksum: "ab9641ea312dd8f9a07e3ac9cacc169b15c7d17bf2a01131ac1c28df0faa08d9"
        ),
    ]
)
