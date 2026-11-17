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
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.1/SymplrAdsSDK.xcframework.zip",
            checksum: "bad2638f1ffb491fe35b7d86796ceed3877a620dad12caeef17d79e0b93260d4"
        ),
        .binaryTarget(
            name: "SymplrAdsSourcepoint",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.1/SymplrAdsSourcepoint.xcframework.zip",
            checksum: "d284e76c7fd144118a9b269e52bcf39268e1bf68f51de2427d0901a7bc48d929"
        ),
        .binaryTarget(
            name: "SymplrAdsFundingChoices",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.1/SymplrAdsFundingChoices.xcframework.zip",
            checksum: "1fefb80ada1a61c6246b84fe6e37ecacb8e52158f5e1a2d0af6249614e9cbce5"
        ),
        .binaryTarget(
            name: "SymplrAdsAGMA",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.1/SymplrAdsAGMA.xcframework.zip",
            checksum: "75f85bea830c778dfc701cb3fc546856597c6bc24bbbf825f7899a36a5401fa2"
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
