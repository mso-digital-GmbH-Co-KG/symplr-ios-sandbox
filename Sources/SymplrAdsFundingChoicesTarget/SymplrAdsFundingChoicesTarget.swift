import SymplrAdsFundingChoices

/// Keeps the Funding Choices module in your app.
///
/// The SDK finds its optional modules at runtime, so nothing in your code
/// has to mention them. A linker drops code that nothing mentions. This
/// reference is what keeps the module in. You never need to use this type;
/// in your app, write `import SymplrAdsFundingChoices` only if you call the module directly.
public enum SymplrAdsFundingChoicesLinkAnchor {
    public static let moduleClass: AnyClass = FundingChoicesModule.self
}
