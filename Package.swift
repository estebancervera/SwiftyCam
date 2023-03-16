import PackageDescription

let package = Package(
    name: "SwiftyCam",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "SwiftyCam",
            targets: ["SwiftyCam"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "6.6.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "SwiftyCam",
            dependencies: ["ReactiveSwift", "SwiftyJSON"],
            path: "Sources"),
        .testTarget(
            name: "SwiftyCamTests",
            dependencies: ["SwiftyCam"],
            path: "Tests"),
    ]
)
