// swift-tools-version: 5.9
//
// symplr Ads SDK for iOS.
//
// This file is generated for every release. Do not edit it by hand.
//
// Each product is a precompiled binary plus a small source target. The
// source target exists because Swift Package Manager cannot attach
// dependencies to a binary target: it pulls in the binary together with the
// third-party SDKs that binary needs.

import PackageDescription

let package = Package(
    name: "SymplrAds",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "SymplrAdsSDK", targets: ["SymplrAdsSDKTarget"]),
        .library(name: "SymplrAdsSourcepoint", targets: ["SymplrAdsSourcepointTarget"]),
        .library(name: "SymplrAdsFundingChoices", targets: ["SymplrAdsFundingChoicesTarget"]),
        .library(name: "SymplrAdsAGMA", targets: ["SymplrAdsAGMATarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            .upToNextMajor(from: "13.12.0")
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-user-messaging-platform.git",
            .upToNextMajor(from: "3.1.0")
        ),
        // Exact version on purpose. The SDK binaries only work with the
        // Prebid version they were built with.
        .package(
            url: "https://github.com/prebid/prebid-mobile-ios.git",
            exact: "3.4.1"
        ),
        .package(
            url: "https://github.com/SourcePointUSA/ios-cmp-app.git",
            .upToNextMinor(from: "7.12.11")
        ),
        .package(
            url: "https://github.com/agma-dna/agma-sdk-ios.git",
            .upToNextMajor(from: "2.0.0")
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SymplrAdsSDK",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.2/SymplrAdsSDK.xcframework.zip",
            checksum: "50597506be6a247708a7444d6850d643502c4f5e8f1d0f0ebe1ed6ea45fc7cff"
        ),
        .binaryTarget(
            name: "SymplrAdsSourcepoint",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.2/SymplrAdsSourcepoint.xcframework.zip",
            checksum: "bce4f3896ca6344a233d3cc023d7b31d3a34bf4daab37c2b428e33484b7a1299"
        ),
        .binaryTarget(
            name: "SymplrAdsFundingChoices",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.2/SymplrAdsFundingChoices.xcframework.zip",
            checksum: "9f2641d7b1830d0e4e2771f134d83fd404532a18501a32fa1a9006f60a350333"
        ),
        .binaryTarget(
            name: "SymplrAdsAGMA",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.2/SymplrAdsAGMA.xcframework.zip",
            checksum: "4db156f02652e9356c7c1cf64281a0d982d5541bbac7caba3cd9792af4b4eab0"
        ),

        .target(
            name: "SymplrAdsSDKTarget",
            dependencies: [
                "SymplrAdsSDK",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "PrebidMobile", package: "prebid-mobile-ios"),
            ]
        ),
        .target(
            name: "SymplrAdsSourcepointTarget",
            dependencies: [
                "SymplrAdsSourcepoint",
                "SymplrAdsSDKTarget",
                .product(name: "ConsentViewController", package: "ios-cmp-app"),
            ]
        ),
        .target(
            name: "SymplrAdsFundingChoicesTarget",
            dependencies: [
                "SymplrAdsFundingChoices",
                "SymplrAdsSDKTarget",
                .product(
                    name: "GoogleUserMessagingPlatform",
                    package: "swift-package-manager-google-user-messaging-platform"
                ),
            ]
        ),
        .target(
            name: "SymplrAdsAGMATarget",
            dependencies: [
                "SymplrAdsAGMA",
                "SymplrAdsSDKTarget",
                .product(name: "AgmaSdkIos", package: "agma-sdk-ios"),
            ]
        ),
    ]
)
