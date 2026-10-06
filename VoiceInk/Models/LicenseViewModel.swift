import Foundation

/// Stubbed in this fork: licence logic removed, state always `.licensed`.
/// API surface preserved so existing call sites compile.
@MainActor
class LicenseViewModel: ObservableObject {
    enum LicenseState: Equatable {
        case trial(daysRemaining: Int)
        case trialExpired
        case licensed
    }

    @Published private(set) var licenseState: LicenseState = .licensed
    @Published var licenseKey: String = ""
    @Published var isValidating: Bool = false
    @Published var validationMessage: String? = nil
    @Published private(set) var activationsLimit: Int = 0

    var canUseApp: Bool { true }

    func validateLicense() async {
        licenseState = .licensed
        validationMessage = "Licensed."
    }

    func removeLicense() {}
    func openPurchaseLink() {}
}
