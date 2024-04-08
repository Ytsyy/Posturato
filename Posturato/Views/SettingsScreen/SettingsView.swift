//
//  SettingsView.swift
//  Posturato
//
//  Created by Maxim on 14.03.2024.
//

import SwiftUI

import SwiftUI

enum SettingScreen {
    case contact, termsOfUse, privacyPolicy, profile, subscription, notifications, language
}

enum AccountSettings: CaseIterable {
    case profile, subscription
    // Добавьте остальные случаи по мере необходимости
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .subscription: return "Subscription"
        }
    }
}

enum GeneralSettings: CaseIterable {
    case notifications, language
    // Добавьте остальные случаи по мере необходимости
    
    var title: String {
        switch self {
        case .notifications: return "Notifications"
        case .language: return "Language"
        }
    }
}

enum SupportSettings: CaseIterable {
    case contact, termsOfUse, privacyPolicy
    // Добавьте остальные случаи по мере необходимости
    
    var title: String {
        switch self {
        case .contact: return "Contact Support"
        case .termsOfUse: return "Terms of Use"
        case .privacyPolicy: return "Privacy Policy"
        }
    }
}

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var isProfileViewPresented = false
    @State private var isSubscriptionViewPresented = false
    @State private var isNotificationsViewPresented = false
    @State private var isLanguageViewPresented = false
    @State private var isFrequentlyAskedQuestionsViewPresented = false
    @State private var isContactSupportViewPresented = false
    @State private var isTermsOfUseViewPresented = false
    @State private var isPrivacyPolicyViewPresented = false

    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Account")) {
                    Button("Profile") {
                        isProfileViewPresented = true
                    }
                    .navigationDestination(isPresented: $isProfileViewPresented) {
                        ProfileView(viewModel: ProfileViewModel())
                    }
                    
                    Button("Subscription") {
                        isSubscriptionViewPresented = true
                    }
                    .navigationDestination(isPresented: $isSubscriptionViewPresented) {
                        SubscriptionView(viewModel: SubscriptionViewModel())
                    }
                }
                
                Section(header: Text("Preferences")) {
                    Button("Notifications") {
                        isNotificationsViewPresented = true
                    }
                    .navigationDestination(isPresented: $isNotificationsViewPresented) {
                        NotificationsView(viewModel: NotificationsViewModel())
                    }
                    
                    Button("Language") {
                        isLanguageViewPresented = true
                    }
                    .navigationDestination(isPresented: $isLanguageViewPresented) {
                        LanguageView(viewModel: LanguageViewModel())
                    }
                }
                
                Section(header: Text("Support")) {
                    Button("Frequently Asked Questions") {
                        isFrequentlyAskedQuestionsViewPresented = true
                    }
                    .navigationDestination(isPresented: $isFrequentlyAskedQuestionsViewPresented) {
                        FrequentlyAskedQuestionsView(viewModel: FrequentlyAskedQuestionsViewModel())
                    }
                    
                    Button("Contact Support") {
                        isContactSupportViewPresented = true
                    }
                    .navigationDestination(isPresented: $isContactSupportViewPresented) {
                        ContactSupportView(viewModel: ContactSupportViewModel())
                    }
                    
                    Button("Terms of Use") {
                        isTermsOfUseViewPresented = true
                    }
                    .navigationDestination(isPresented: $isTermsOfUseViewPresented) {
                        TermsOfUseView(viewModel: TermsOfUseViewModel())
                    }
                    
                    Button("Privacy Policy") {
                        isPrivacyPolicyViewPresented = true
                    }
                    .navigationDestination(isPresented: $isPrivacyPolicyViewPresented) {
                        PrivacyPolicyView(viewModel: PrivacyPolicyViewModel())
                    }
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}
struct SettingButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .foregroundColor(.black)
                    .padding(.leading, 20)
                Spacer()
            }
            .frame(maxWidth: .infinity, minHeight: 34)
            .padding(.vertical, 10)
            .background(Color.white)
            .cornerRadius(13)
            .shadow(radius: 5)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal, 25)
    }
}

