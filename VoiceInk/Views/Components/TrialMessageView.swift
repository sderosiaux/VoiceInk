import SwiftUI

/// Stubbed in this fork: trial messaging removed.
struct TrialMessageView: View {
    let message: String
    let type: MessageType
    var onAddLicenseKey: (() -> Void)? = nil

    enum MessageType {
        case warning
        case expired
        case info
    }

    var body: some View { EmptyView() }
}
