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
