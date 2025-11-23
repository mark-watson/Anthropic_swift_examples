// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "HF_Transformers_swift_examples",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/huggingface/swift-transformers.git", branch: "main")
    ],
    targets: [
        .testTarget(
            name: "HF_Transformers_swift_examplesTests",
            dependencies: [
                .product(name: "Transformers", package: "swift-transformers")
            ]
        )
    ]
)