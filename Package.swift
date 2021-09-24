// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReactiveDog",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ReactiveDog",
            targets: ["ReactiveDog"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "ReactiveDog", url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ReactiveDog.xcframework-2.zip", checksum: "2b0df25f4333bac52cc6299b1e90239662e1b22f07b3adffabff0582312f5885"),
    ]
)
