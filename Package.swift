// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TMSyntax",
    products: [
        .library(name: "TMSyntax", targets: ["TMSyntax"]),
    ],
    dependencies: [
        .package(url: "https://github.com/omochi/FineJSON", .upToNextMajor(from: "1.0.0")),
        .package(name: "Onigmo", url: "https://github.com/underthestars-zhy/Onigmo-swift-build", .upToNextMajor(from: "1.2.1")),
    ],
    targets: [
        .target(name: "TMSyntax", dependencies: ["FineJSON", "Onigmo"]),
        .testTarget(name: "TMSyntaxTests", dependencies: ["TMSyntax"], resources: [.process("Resources")]),
    ]
)
