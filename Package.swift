// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libshaderc",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libshaderc_combined", 
            targets: ["Libshaderc_combined"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libshaderc_combined",
            dependencies: ["Libshaderc_combined"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.2.0/Libshaderc_combined.xcframework.zip",
            checksum: "1ccd9fce68ea29af030dceb824716fc16d1f4dcdc0b912ba366d5cb91d7b1add"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
