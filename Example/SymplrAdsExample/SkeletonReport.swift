import Foundation
import SymplrAdsAGMA
import SymplrAdsFundingChoices
import SymplrAdsSDK
import SymplrAdsSourcepoint

/// What the four SDK products report about themselves.
///
/// At this stage the SDK has no features yet. Each product offers one
/// function that calls into the third-party SDK it is built on. This type
/// calls all of them once.
struct SkeletonReport {

    /// From the core: the Google Mobile Ads and Prebid versions it runs on.
    let core: String
    /// From the core: the optional modules it found in this app.
    let linkedModules: [String]
    let sourcepoint: String
    let fundingChoices: String
    let agma: String

    @MainActor
    static func collect() -> SkeletonReport {
        SkeletonReport(
            core: SymplrAds.stubDescription(),
            linkedModules: SymplrAds.linkedModules(),
            sourcepoint: SourcepointModule.stubDescription(),
            fundingChoices: FundingChoicesModule.stubDescription(),
            agma: AgmaModule.stubDescription()
        )
    }

    var json: String {
        let object: [String: Any] = [
            "core": core,
            "linkedModules": linkedModules,
            "sourcepoint": sourcepoint,
            "fundingChoices": fundingChoices,
            "agma": agma,
        ]
        guard
            let data = try? JSONSerialization.data(withJSONObject: object, options: [.sortedKeys]),
            let string = String(data: data, encoding: .utf8)
        else {
            return "{}"
        }
        return string
    }
}
