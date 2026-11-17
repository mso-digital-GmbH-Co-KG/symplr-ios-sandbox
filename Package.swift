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
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.3/SymplrAdsSDK.xcframework.zip",
            checksum: "e34b25a3d1f811309c13e86cf614936a5720dede929324a7c9a4424b6834eb5b"
        ),
        .binaryTarget(
            name: "SymplrAdsSourcepoint",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.3/SymplrAdsSourcepoint.xcframework.zip",
            checksum: "ad90aa78cd3e91a5b677ddb0a8fd507dfda4860f01303dc3ea76f7bebbd70b4f"
        ),
        .binaryTarget(
            name: "SymplrAdsFundingChoices",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.3/SymplrAdsFundingChoices.xcframework.zip",
            checksum: "1d9a8cd6c95975d534411b9d1b9a4fac3c627dc7420e2bbd82f895f1c24fb345"
        ),
        .binaryTarget(
            name: "SymplrAdsAGMA",
            url: "https://github.com/mso-digital-GmbH-Co-KG/symplr-ios-sandbox/releases/download/0.0.1-test.3/SymplrAdsAGMA.xcframework.zip",
            checksum: "f95d2db67995371bdb32a3348efceebfafc4eb0a99bc2efa5b63f00974d09205"
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
