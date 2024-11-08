// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-snapshot-xcodebuild",
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.6")
  ],
  targets: [
    .executableTarget(
      name: "swift-snapshot-xcodebuild",
      dependencies: ["SnapshotXcodeBuild"]),
    .target(name: "SnapshotXcodeBuild"),
    .testTarget(
      name: "SnapshotXcodeBuildTests",
      dependencies: [
        "SnapshotXcodeBuild",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
        .product(name: "InlineSnapshotTesting", package: "swift-snapshot-testing")
      ]),
  ]
)
