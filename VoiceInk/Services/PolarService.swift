import Foundation

/// Stubbed: license validation disabled in this fork. All calls return "licensed"
/// without any network activity. Preserves the original API surface so call sites
/// in LicenseViewModel continue to compile.
class PolarService {
    func checkLicenseRequiresActivation(_ key: String) async throws -> (isValid: Bool, requiresActivation: Bool, activationsLimit: Int?) {
        return (isValid: true, requiresActivation: false, activationsLimit: nil)
    }

    func activateLicenseKey(_ key: String) async throws -> (activationId: String, activationsLimit: Int) {
        return (activationId: "local", activationsLimit: 0)
    }

    func validateLicenseKeyWithActivation(_ key: String, activationId: String) async throws -> Bool {
        return true
    }
}

enum LicenseError: Error, LocalizedError {
    case activationFailed(String)
    case validationFailed(String)
    case activationLimitReached(String)
    case activationNotRequired

    var errorDescription: String? {
        switch self {
        case .activationFailed(let details): return "Failed to activate license: \(details)"
        case .validationFailed(let details): return "License validation failed: \(details)"
        case .activationLimitReached(let details): return "Activation limit reached: \(details)"
        case .activationNotRequired: return "This license does not require activation."
        }
    }
}
