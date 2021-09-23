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
            targets: ["ReactiveDog"]),
        .library(name: "RxSwift", targets: ["RxSwift"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "ReactiveDog", url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ReactiveDog.xcframework.zip", checksum: "288f199ba6ad37fbf4155609e3be33296ccea4d95ba3b556459ab7f7c9ad396f"),
        .binaryTarget(name: "RxSwift", url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift.xcframework.zip", checksum: "411c88b4b491daf01786c30569f6f9a5fdeb37911a86b2561b253fa4e744e4f3")
    ]
)
