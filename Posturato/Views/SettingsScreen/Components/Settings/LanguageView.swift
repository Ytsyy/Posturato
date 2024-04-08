//
//  LanguageView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var username: String = "User123"
    // Дополнительные данные и логика для страницы профиля
}

class SubscriptionViewModel: ObservableObject {
    @Published var subscriptionStatus: String = "Active"
    // Дополнительные данные и логика для страницы подписки
}

class NotificationsViewModel: ObservableObject {
    @Published var notificationsEnabled: Bool = true
    // Дополнительные данные и логика для страницы уведомлений
}

class LanguageViewModel: ObservableObject {
    @Published var selectedLanguage: String = "English"
    // Дополнительные данные и логика для страницы языка
}


//FUTURE
struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Text("Profile Page")
            Text("Username: \(viewModel.username)")
            // Здесь может быть больше элементов интерфейса для настройки профиля
        }
        .navigationTitle("Profile")
    }
}

struct SubscriptionView: View {
    @ObservedObject var viewModel: SubscriptionViewModel
    
    var body: some View {
        VStack {
            Text("Subscription Page")
            Text("Status: \(viewModel.subscriptionStatus)")
            // Элементы интерфейса для управления подпиской
        }
        .navigationTitle("Subscription")
    }
}

struct NotificationsView: View {
    @ObservedObject var viewModel: NotificationsViewModel
    
    var body: some View {
        VStack {
            Text("Notifications Page")
            Toggle(isOn: $viewModel.notificationsEnabled) {
                Text("Enable Notifications")
            }
            // Дополнительные настройки уведомлений
        }
        .navigationTitle("Notifications")
    }
}

struct LanguageView: View {
    @ObservedObject var viewModel: LanguageViewModel
    
    var body: some View {
        VStack {
            Text("Language Page")
            Text("Selected Language: \(viewModel.selectedLanguage)")
            // Опции для выбора языка
        }
        .navigationTitle("Language")
    }
}
