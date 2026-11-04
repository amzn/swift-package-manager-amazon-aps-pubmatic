// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesPubmaticAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AmazonPublisherServicesPubmaticAdapter", targets: ["APSPubmaticAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.6.6"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", from: "5.5.0")
    ],
    targets: [
        .target(
            name: "APSPubmaticAdapterTarget",
            dependencies: [
                "APSiOSPubmaticAdapter",
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package")
            ],
            path: "Sources/APSPubmaticAdapterTarget"
        ),
        .binaryTarget(
            name: "APSiOSPubmaticAdapter",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_Pubmatic_Adapter_SPM/APSPubmaticAdapter-1.0.0.zip",
            checksum: "5d762d449ae01db393ad5c8a124941c1ecd12b269de0657389c41183171371c6"
        )
    ]
)
