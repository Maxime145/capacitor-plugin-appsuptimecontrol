// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginAppsuptimecontrol",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorPluginAppsuptimecontrol",
            targets: ["CapacitorAppsUptimeControlPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorAppsUptimeControlPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorAppsUptimeControlPlugin"),
        .testTarget(
            name: "CapacitorAppsUptimeControlPluginTests",
            dependencies: ["CapacitorAppsUptimeControlPlugin"],
            path: "ios/Tests/CapacitorAppsUptimeControlPluginTests")
    ]
)