// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MuTouch",
    platforms: [.iOS(.v15)],
    products: [

        .library(
            name: "MuTouch",
            targets: ["MuTouch"]),
    ],
     dependencies: [
        .package(url: "https://github.com/musesum/MuPar.git", from: "0.23.0"),
        .package(url: "https://github.com/musesum/MuFlo.git", from: "0.23.0"),
        .package(url: "https://github.com/musesum/MuPeer.git", from: "0.23.0"), // TextureData
    ],
    targets: [

        .target(
            name: "MuTouch",
            dependencies: [
                .product(name: "MuPar", package: "MuPar"),
                .product(name: "MuFlo", package: "MuFlo"),
                .product(name: "MuPeer", package: "MuPeer")]),
        .testTarget(
            name: "MuTouchTests",
            dependencies: ["MuTouch"]),
    ]
)
