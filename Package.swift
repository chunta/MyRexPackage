// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MyRexPackage",
    products: [
        .library(
            name: "MyRexPackage",
            targets: ["MyRexPackage"]),
    ],
    targets: [
        .target(
            name: "MyRexPackage",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "MyRexPackageTests",
            dependencies: ["MyRexPackage"]),
    ]
)
