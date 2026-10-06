import Foundation

/// Stubbed in this fork: licence state is not persisted anymore.
/// Kept as an empty shell in case any future code reaches for it.
final class LicenseManager {
    static let shared = LicenseManager()
    private init() {}

    var licenseKey: String? { get { nil } set { _ = newValue } }
    var trialStartDate: Date? { get { nil } set { _ = newValue } }
    var activationId: String? { get { nil } set { _ = newValue } }
    func removeAll() {}
}
