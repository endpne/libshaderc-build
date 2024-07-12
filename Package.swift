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
            checksum: "48a512e3f4041c73c62e043f537d27de63022bf553b7238d4716b27e8148cbe4"
        ),
        .binaryTarget(
            name: "Libshaderc-ios",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-ios.xcframework.zip",
            checksum: "a6c316c6840f5834b41f51c4adc06844c9bb81489985d010d3fe23aeb9c00404"
        ),
        .binaryTarget(
            name: "Libshaderc-tvos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-tvos.xcframework.zip",
            checksum: "aaf72ff06a58cec71e759a8e428edab77382512159d6803076efb4fd1cf15f99"
        ),
        .binaryTarget(
            name: "Libshaderc-macos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-macos.xcframework.zip",
            checksum: "21383127c9eae9bf4f7719fec104864ede7dbc910adb5c853534a0d1705efb63"
        )
    ]
)
