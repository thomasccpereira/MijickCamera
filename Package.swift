// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MijickCamera",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(name: "MijickCamera", targets: ["MijickCamera"]),
    ],
    dependencies: [
		.package(path: "../MijickTimer"),
    ],
    targets: [
        .target(name: "MijickCamera", dependencies: [.product(name: "MijickTimer", package: "MijickTimer")], path: "Sources", resources: [.process("Internal/Assets")]),
        .testTarget(name: "MijickCameraTests", dependencies: ["MijickCamera"], path: "Tests")
    ],
    swiftLanguageModes: [.v6]
)
