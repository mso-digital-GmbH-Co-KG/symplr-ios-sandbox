import SwiftUI

@main
struct SymplrAdsExampleApp: App {

    private let report: SkeletonReport

    init() {
        report = SkeletonReport.collect()
        // One machine-readable line, so a script can check the result
        // without looking at the screen.
        print("SYMPLR_EXAMPLE_REPORT \(report.json)")
    }

    var body: some Scene {
        WindowGroup {
            ContentView(report: report)
        }
    }
}
