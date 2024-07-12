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
            checksum: "eb9742389511554f35b21ec8c67f7e27703a0e80cbc509eddbb7b81354900358"
        ),
        .binaryTarget(
            name: "Libshaderc-ios",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-ios.xcframework.zip",
            checksum: "c06679f42326bcc93ceac3f6ac17e49ad1a228e9ed615c672aba17306720d3cf"
        ),
        .binaryTarget(
            name: "Libshaderc-tvos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-tvos.xcframework.zip",
            checksum: "91b6a6d0dd2eee87a0ca469118b6d0d9a68558035454fbc7e06fa4d53737bd19"
        ),
        .binaryTarget(
            name: "Libshaderc-macos",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined-macos.xcframework.zip",
            checksum: "0a4c32d6cd351faa82eb5d061b6e559f7d1f6955d9f4095bd67c580c7a0f7e77"
        )
    ]
)
