// swift-tools-version:5.9
import PackageDescription

let package = Package(
<<<<<<< HEAD
    name: "MLX_swift_examples",
=======
    name: "HF_Transformers_swift_examples",
>>>>>>> 42a6644be324c0e05a9e972ada13aaaf24831cf6
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
<<<<<<< HEAD
        .library(
            name: "MLX_swift_examples",
            targets: ["MLX_swift_examples"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ml-explore/mlx-swift", from: "0.18.1"),
        .package(url: "https://github.com/ml-explore/mlx-swift-examples", branch: "main")
    ],
    targets: [
        .target(
            name: "MLX_swift_examples",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift"),
                .product(name: "LLM", package: "mlx-swift-examples")
            ]
        ),
        .testTarget(
            name: "MLX_swift_examplesTests",
            dependencies: [
               .product(name: "MLX", package: "mlx-swift"),
               .product(name: "MLXRandom", package: "mlx-swift"),
               .product(name: "MLXNN", package: "mlx-swift"),
               .product(name: "MLXOptimizers", package: "mlx-swift"),
               .product(name: "MLXFFT", package: "mlx-swift")
            ]
        ),
=======
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
>>>>>>> 42a6644be324c0e05a9e972ada13aaaf24831cf6
    ]
)