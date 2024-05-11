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
    
    // Инициализация с названием настройки
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
            
            // Здесь может быть больше информации о настройке
            Text("Information about \(viewModel.title)")
        }
        .navigationBarTitle("Detail", displayMode: .inline)
        .navigationBarItems(leading: Button("Back") {
            // Логика возврата назад
        })
    }
}


// Примеры модельных представлений и представлений для демонстрации
class ProfileViewModel: ObservableObject {}
struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    var body: some View {
        Text("Profile View")
    }
}

class SubscriptionViewModel: ObservableObject {}
struct SubscriptionView: View {
    @ObservedObject var viewModel: SubscriptionViewModel
    var body: some View {
        Text("Subscription View")
    }
}

class NotificationsViewModel: ObservableObject {}
struct NotificationsView: View {
    @ObservedObject var viewModel: NotificationsViewModel
    var body: some View {
        Text("Notifications View")
    }
}

class LanguageViewModel: ObservableObject {}
struct LanguageView: View {
    @ObservedObject var viewModel: LanguageViewModel
    var body: some View {
        Text("Language View")
    }
}

class FrequentlyAskedQuestionsViewModel: ObservableObject {}
struct FrequentlyAskedQuestionsView: View {
    @ObservedObject var viewModel: FrequentlyAskedQuestionsViewModel
    var body: some View {
        Text("FAQ View")
    }
}

class ContactSupportViewModel: ObservableObject {}
struct ContactSupportView: View {
    @ObservedObject var viewModel: ContactSupportViewModel
    var body: some View {
        Text("Contact Support View")
    }
}

class TermsOfUseViewModel: ObservableObject {}
struct TermsOfUseView: View {
    @ObservedObject var viewModel: TermsOfUseViewModel
    var body: some View {
        Text("Terms of Use View")
    }
}

class PrivacyPolicyViewModel: ObservableObject {}
struct PrivacyPolicyView: View {
    @ObservedObject var viewModel: PrivacyPolicyViewModel
    var body: some View {
        Text("Privacy Policy View")
    }
}

// Поддерживаемые настройки
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
