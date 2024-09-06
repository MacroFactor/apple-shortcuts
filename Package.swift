// swift-tools-version: 5.11

import PackageDescription

let package = Package(
  name: "macrofactor-apple-shortcuts",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v15), .macOS(.v14), .watchOS(.v10), .tvOS(.v17)
  ],
  products: [
    .library(name: "Nutrition", targets: ["Nutrition"])
  ],
  targets: [
    .target(name: "Nutrition"),
    .testTarget(name: "NutritionTests", dependencies: ["Nutrition"])
  ]
)
