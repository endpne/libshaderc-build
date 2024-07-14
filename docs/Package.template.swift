// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libshaderc",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libshaderc", 
            targets: ["Libshaderc"]
        ),
        .library(
            name: "Libshaderc-ios", 
            targets: ["_Libshaderc-ios"]
        ),
        .library(
            name: "Libshaderc-tvos", 
            targets: ["_Libshaderc-tvos"]
        ),
        .library(
            name: "Libshaderc-macos", 
            targets: ["_Libshaderc-macos"]
        ),
        .library(
            name: "Libshaderc-xros", 
            targets: ["_Libshaderc-xros"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libshaderc",
            dependencies: ["Libshaderc"],
            path: "Sources/_Dummy"
        ),
        .target(
            name: "_Libshaderc-ios",
            dependencies: ["Libshaderc-ios"],
            path: "Sources/_Dummy"
        ),
        .target(
            name: "_Libshaderc-tvos",
            dependencies: ["Libshaderc-tvos"],
            path: "Sources/_Dummy"
        ),
        .target(
            name: "_Libshaderc-macos",
            dependencies: ["Libshaderc-macos"],
            path: "Sources/_Dummy"
        ),
        .target(
            name: "_Libshaderc-xros",
            dependencies: ["Libshaderc-xros"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//
        //AUTO_GENERATE_TARGETS_END//
    ]
)
