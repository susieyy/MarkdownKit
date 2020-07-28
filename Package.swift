// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MarkdownKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MarkdownKit", targets: ["MarkdownKit"])
    ],
    dependencies: [
        // .package(name: "cmark_gfm", url: "https://github.com/hebertialmeida/swift-cmark-gfm", .upToNextMajor(from: "1.0.0"))
        .package(name: "libcmark_gfm", url: "https://github.com/KristopherGBaker/libcmark_gfm.git", from: "0.29.3")
    ],
    targets: [
        .target(name: "MarkdownKitObjC"),
        .target(name: "MarkdownKit", dependencies: ["libcmark_gfm", "MarkdownKitObjC"]),
        .testTarget(name: "MarkdownKitTests", dependencies: ["MarkdownKit"])
    ],
    swiftLanguageVersions: [.v5]
)
