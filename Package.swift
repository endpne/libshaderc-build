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
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.1/Libshaderc_combined.xcframework.zip",
            checksum: "4d1bb38405e9bfe6983588b6413352486a2c04ddebf7e377d316ec534f0f9ba5"
        ),
        .binaryTarget(
            name: "Libshaderc-ios",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.1/Libshaderc_combined-ios.xcframework.zip",
            checksum: "6de2d04365cf132a2a6ea13c7ae8d60a51779dc1e1ccddd21c022c0a8bb08e38"
        ),
        .binaryTarget(
            name: "Libshaderc-tvos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.1/Libshaderc_combined-tvos.xcframework.zip",
            checksum: "726212fc18ba1354e3a4649cc248de799ef91cfe49fa112157b64195271d6f1f"
        ),
        .binaryTarget(
            name: "Libshaderc-macos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.1/Libshaderc_combined-macos.xcframework.zip",
            checksum: "b5877467bd64ce676fa285855f835c019e50144476a49236af158f1b16aace4a"
        )
    ]
)
