// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SkynetIntelligencePackage",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SkynetIntelligenceFramework",
            targets: ["SkynetIntelligenceFrameworkTarget"]),
    ],
    dependencies: [
        .package(name: "SQLCipher", url: "https://github.com/stoneburner/SQLCipher.git", from: "0.0.4")
    ],
    targets: [
        .binaryTarget(
            name: "SkynetIntelligenceFrameworkTarget",
            url: "https://github.com/yourusername/SkynetIntelligenceFramework/releases/download/v1.0/SkynetIntelligenceFramework.xcframework.zip",
            checksum: "<XCFRAMEWORK_CHECKSUM>"
        ),
        .target(
            name: "SkynetIntelligenceFrameworkTargetWrapper",
            dependencies: [
                "SkynetIntelligenceFrameworkTarget",
                "SQLCipher"
            ]
        )
    ]
)
