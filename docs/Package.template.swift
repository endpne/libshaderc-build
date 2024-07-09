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
            url: "\(Libshaderc_url)",
            checksum: "\(Libshaderc_checksum)"
        ),
        .binaryTarget(
            name: "Libshaderc-ios",
            url: "\(Libshaderc_ios_url)",
            checksum: "\(Libshaderc_ios_checksum)"
        ),
        .binaryTarget(
            name: "Libshaderc-tvos",
            url: "\(Libshaderc_tvos_url)",
            checksum: "\(Libshaderc_tvos_checksum)"
        ),
        .binaryTarget(
            name: "Libshaderc-macos",
            url: "\(Libshaderc_macos_url)",
            checksum: "\(Libshaderc_macos_checksum)"
        )
    ]
)
