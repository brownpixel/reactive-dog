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
        .library(name: "ReactivDogDeps", type: .dynamic, targets: ["ReactivDogDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "ReactiveDog", url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ReactiveDog.xcframework-3.zip", checksum: "57a39d4e453d6cbebd4b18c7ccba3b946fb52aa97e24c2c662b9b26d61874999"),
        .target(name: "ReactivDogDeps", dependencies: [
            "RxSwift"
        ])
    ]
)
