//
//  SettingsViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation
import SwiftUI

class SettingDetailViewModel: ObservableObject {
    @Published var title: String = ""
    
    init(title: String) {
        self.title = title
    }
}

struct SettingDetailView: View {
    @ObservedObject var viewModel: SettingDetailViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.largeTitle)
        
            Text("Information about \(viewModel.title)")
        }
        .navigationBarTitle("Detail", displayMode: .inline)
        .navigationBarItems(leading: Button("Back") {
        })
    }
}

enum AccountSettings: CaseIterable {
    case profile, subscription

    var title: String {
        switch self {
        case .profile: return "Profile"
        case .subscription: return "Subscription"
        }
    }
}

enum GeneralSettings: CaseIterable {
    case notifications, language

    var title: String {
        switch self {
        case .notifications: return "Notifications"
        case .language: return "Language"
        }
    }
}

enum SupportSettings: CaseIterable {
    case contact, termsOfUse, privacyPolicy

    var title: String {
        switch self {
        case .contact: return "Contact Support"
        case .termsOfUse: return "Terms of Use"
        case .privacyPolicy: return "Privacy Policy"
        }
    }
}
