// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "MLX_swift_examples",
    platforms: [
        .macOS("14.0")
    ],
    products: [
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
    ]
)