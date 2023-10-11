// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFirstSPMDemo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFirstSPMDemo",
            targets: ["MyFirstSPMDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DataDog/dd-sdk-ios.git", exact: "2.3.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS.git", exact: "8.17.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyFirstSPMDemo",
            dependencies: ["dd-sdk-ios", "Amplitude-iOS"]),
        .testTarget(
            name: "MyFirstSPMDemoTests",
            dependencies: ["MyFirstSPMDemo"]),
    ]
)
