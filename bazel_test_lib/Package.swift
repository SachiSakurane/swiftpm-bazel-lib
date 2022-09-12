// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift_wrapper_lib_package_manager",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftWrapperLib",
            targets: ["swift_wrapper_lib"]),
    ],
    dependencies: [
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "swift_wrapper_lib",
            path: "swift_wrapper_lib.xcframework"
        ),
    ]
)
