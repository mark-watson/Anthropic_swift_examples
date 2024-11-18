// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "Anthropic_swift_examples",
    platforms: [
        .macOS("14.0")
    ],
    products: [
        .library(
            name: "Anthropic_swift_examples",
            targets: ["Anthropic_swift_examples"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/fumito-ito/AnthropicSwiftSDK.git", from: "0.8.0")
    ],
    targets: [
        .target(
            name: "Anthropic_swift_examples",
            dependencies: [
                .product(name: "AnthropicSwiftSDK", package: "AnthropicSwiftSDK")
            ]
        ),
        .testTarget(
            name: "Anthropic_swift_examplesTests",
            dependencies: ["Anthropic_swift_examples"]
        ),
    ]
)