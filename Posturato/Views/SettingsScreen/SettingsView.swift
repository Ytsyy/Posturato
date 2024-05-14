//
//  SettingsView.swift
//  Posturato
//
//  Created by Maxim on 14.03.2024.
//

import SwiftUI

enum SettingScreen {
    case contact, termsOfUse, privacyPolicy, profile, subscription, notifications, language
}


struct SettingsView: View {
    var body: some View {
        List {
            Section(header: Text("Account")) {
                NavigationLink("Profile", destination: ProfileView(viewModel: ProfileViewModel()))
                NavigationLink("Subscription", destination: SubscriptionView(viewModel: SubscriptionViewModel()))
            }
            
            Section(header: Text("Preferences")) {
                NavigationLink("Notifications", destination: NotificationsView(viewModel: NotificationsViewModel()))
                NavigationLink("Language", destination: LanguageView(viewModel: LanguageViewModel()))
            }
            
            Section(header: Text("Support")) {
                NavigationLink("Frequently Asked Questions", destination: FrequentlyAskedQuestionsView(viewModel: FrequentlyAskedQuestionsViewModel()))
                NavigationLink("Contact Support", destination: ContactSupportView(viewModel: ContactSupportViewModel()))
                NavigationLink("Terms of Use", destination: TermsOfUseView(viewModel: TermsOfUseViewModel()))
                NavigationLink("Privacy Policy", destination: PrivacyPolicyView(viewModel: PrivacyPolicyViewModel()))
            }
        }
        .navigationTitle("Settings")
        .background(Color("LightBeige")) 
        .toolbar {
            
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

