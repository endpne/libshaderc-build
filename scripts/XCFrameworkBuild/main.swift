import Foundation

do {
    try Build.performCommand(arguments: Array(CommandLine.arguments.dropFirst()))

    try BuildShaderc().buildALL()
} catch {
    print(error.localizedDescription)
    exit(1)
}


enum Library: String, CaseIterable {
    case libshaderc
    var version: String {
        switch self {
        case .libshaderc:  // compiling GLSL (OpenGL Shading Language) shaders into SPIR-V (Standard Portable Intermediate Representation - Vulkan) code
            return "v2024.1"
        }
    }

    var url: String {
        switch self {
        case .libshaderc:
            return "https://github.com/google/shaderc"
        }
    }
}

private class BuildShaderc: BaseBuild {
    init() {
        super.init(library: .libshaderc)
        try! Utility.launch(executableURL: directoryURL + "/utils/git-sync-deps", arguments: [], currentDirectoryURL: directoryURL)
        var path = directoryURL + "third_party/spirv-tools/tools/reduce/reduce.cpp"
        if let data = FileManager.default.contents(atPath: path.path), var str = String(data: data, encoding: .utf8) {
            str = str.replacingOccurrences(of: """
              int res = std::system(nullptr);
              return res != 0;
            """, with: """
              FILE* fp = popen(nullptr, "r");
              return fp == NULL;
            """)
            str = str.replacingOccurrences(of: """
              int status = std::system(command.c_str());
            """, with: """
              FILE* fp = popen(command.c_str(), "r");
            """)
            str = str.replacingOccurrences(of: """
              return status == 0;
            """, with: """
              return fp != NULL;
            """)
            try! str.write(toFile: path.path, atomically: true, encoding: .utf8)
        }
        path = directoryURL + "third_party/spirv-tools/tools/fuzz/fuzz.cpp"
        if let data = FileManager.default.contents(atPath: path.path), var str = String(data: data, encoding: .utf8) {
            str = str.replacingOccurrences(of: """
              int res = std::system(nullptr);
              return res != 0;
            """, with: """
              FILE* fp = popen(nullptr, "r");
              return fp == NULL;
            """)
            str = str.replacingOccurrences(of: """
              int status = std::system(command.c_str());
            """, with: """
              FILE* fp = popen(command.c_str(), "r");
            """)
            str = str.replacingOccurrences(of: """
              return status == 0;
            """, with: """
              return fp != NULL;
            """)
            try! str.write(toFile: path.path, atomically: true, encoding: .utf8)
        }
    }

    override func arguments(platform: PlatformType, arch: ArchType) -> [String] {
        [
            "-DSHADERC_SKIP_TESTS=ON",
            "-DSHADERC_SKIP_EXAMPLES=ON",
            "-DSHADERC_SKIP_COPYRIGHT_CHECK=ON",
            "-DENABLE_EXCEPTIONS=ON",
            "-DENABLE_GLSLANG_BINARIES=OFF",
            "-DSPIRV_SKIP_EXECUTABLES=ON",
            "-DSPIRV_TOOLS_BUILD_STATIC=ON",
            "-DBUILD_SHARED_LIBS=OFF",
        ]
    }

    override func frameworks() throws -> [String] {
        ["libshaderc_combined"]
    }
    
}