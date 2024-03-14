//
//  CustomSettingButton.swift
//  Posturato
//
//  Created by Maxim on 14.03.2024.
//

import SwiftUI

struct SettingButton: View {
    var title: String
    
    var body: some View {
        Button(action: {
            // Действие при нажатии на кнопку
        }) {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue) // Цвет кнопки
                .cornerRadius(10)
                .shadow(radius: 2) // Тень
                .padding(.horizontal, 20) // Отступы по бокам
        }
        .buttonStyle(PlainButtonStyle())
    }
}



//FUTURE перенести это все в модель 
enum AccountSettings: CaseIterable {
    case profile, security, signOut
    
    var title: String {
        switch self {
        case .profile: return "Профиль"
        case .security: return "Безопасность"
        case .signOut: return "Выход"
        }
    }
}

enum GeneralSettings: CaseIterable {
    case notifications, language, theme
    
    var title: String {
        switch self {
        case .notifications: return "Уведомления"
        case .language: return "Язык"
        case .theme: return "Тема"
        }
    }
}
