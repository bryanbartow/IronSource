// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IronSourcePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IronSourcePackage",
            targets: ["IronSourceFramework", "IronSourceAdQualityFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        /*.target(
            name: "IronSource"),*/
        .binaryTarget(
            name: "IronSourceFramework",
            path: "./Sources/IronSource.xcframework"
        ),
        .binaryTarget(
            name: "IronSourceAdQualityFramework",
            path: "./Sources/IronSourceAdQualitySDK.xcframework"
        ),
        /*.testTarget(
            name: "IronSourceTests",
            dependencies: ["IronSource"]),*/
    ]
)
