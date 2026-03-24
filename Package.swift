// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "wuhu-fetch-urlsession",
    products: [
        .library(
            name: "WuhuFetchURLSession",
            targets: ["WuhuFetchURLSession"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/wuhu-labs/wuhu-fetch", branch: "main"),
    ],
    targets: [
        .target(
            name: "WuhuFetchURLSession",
            dependencies: [
                .product(name: "WuhuFetch", package: "wuhu-fetch"),
            ]
        ),
        .testTarget(
            name: "WuhuFetchURLSessionTests",
            dependencies: ["WuhuFetchURLSession"]
        ),
    ]
)
