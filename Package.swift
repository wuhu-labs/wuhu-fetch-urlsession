// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "wuhu-fetch-urlsession",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "FetchURLSession",
      targets: ["FetchURLSession"]
    ),
  ],
  dependencies: [
    .package(path: "../wuhu-fetch"),
  ],
  targets: [
    .target(
      name: "FetchURLSession",
      dependencies: [
        .product(name: "Fetch", package: "wuhu-fetch"),
      ]
    ),
    .testTarget(
      name: "FetchURLSessionTests",
      dependencies: [
        "FetchURLSession",
        .product(name: "Fetch", package: "wuhu-fetch"),
        .product(name: "FetchTesting", package: "wuhu-fetch"),
      ]
    ),
  ]
)
