# libshaderc-build

build scripts for [libshaderc](https://github.com/google/shaderc)

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/libshaderc-build.git
```

## How to build

```bash
swift run --package-path scripts
```

or 

```bash
# deployment platform: macos,ios,tvos,maccatalyst
swift run --package-path scripts build platforms=ios,macos
```