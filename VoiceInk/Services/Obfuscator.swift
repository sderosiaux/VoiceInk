import Foundation

/// Stubbed in this fork: device identification removed with the licence system.
enum Obfuscator {
    static func encode(_ string: String, salt: String) -> String { "" }
    static func decode(_ base64: String, salt: String) -> String? { nil }
    static func getDeviceIdentifier() -> String { "" }
}
