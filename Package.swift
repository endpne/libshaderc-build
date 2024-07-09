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
            targets: ["Libshaderc-ios"]
        ),
        .library(
            name: "Libshaderc-tvos", 
            targets: ["Libshaderc-tvos"]
        ),
        .library(
            name: "Libshaderc-macos", 
            targets: ["Libshaderc-macos"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Libshaderc",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined.xcframework.zip",
            checksum: "4bd45964390f612a788532cbc9b804951403f299a105ad45bffa739bba884a14"
        ),
        .binaryTarget(
            name: "Libshaderc-ios",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-ios.xcframework.zip",
            checksum: "2bbcf04020b564ba5004c405edbecc61c20bd8a281cf10bb99d757feac9590c9"
        ),
        .binaryTarget(
            name: "Libshaderc-tvos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-tvos.xcframework.zip",
            checksum: "be47e4d14d848a5d6dbc270429d265999903557a56da6ceb784dfc08d5fc470d"
        ),
        .binaryTarget(
            name: "Libshaderc-macos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-macos.xcframework.zip",
            checksum: "a5398f4578a45f62982637dc718d98a68b79104ddb34fc2d7984ce7d4268240a"
        )
    ]
)
