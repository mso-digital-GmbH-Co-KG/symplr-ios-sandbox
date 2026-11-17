import SwiftUI

struct ContentView: View {

    let report: SkeletonReport

    var body: some View {
        NavigationView {
            List {
                Section {
                    row("SymplrAdsSDK", report.core)
                } header: {
                    Text("Core")
                }

                Section {
                    if report.linkedModules.isEmpty {
                        Text("None").foregroundColor(.secondary)
                    }
                    ForEach(report.linkedModules, id: \.self) { module in
                        Label(module, systemImage: "checkmark.circle.fill")
                    }
                } header: {
                    Text("Modules the core found")
                } footer: {
                    Text("The core finds the modules linked into the app by itself.")
                }

                Section {
                    row("SymplrAdsSourcepoint", report.sourcepoint)
                    row("SymplrAdsFundingChoices", report.fundingChoices)
                    row("SymplrAdsAGMA", report.agma)
                } header: {
                    Text("Modules called directly")
                }
            }
            .navigationTitle("symplr Ads SDK")
        }
        .navigationViewStyle(.stack)
    }

    private func row(_ title: String, _ detail: String) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title).font(.headline)
            Text(detail).font(.footnote.monospaced()).foregroundColor(.secondary)
        }
        .padding(.vertical, 2)
    }
}
