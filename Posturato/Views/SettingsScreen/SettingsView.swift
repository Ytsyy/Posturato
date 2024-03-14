//
//  SettingsView.swift
//  Posturato
//
//  Created by Maxim on 14.03.2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Категория Аккаунт
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Аккаунт")
                            .font(.headline)
                            .padding(.leading, 20)
                        
                        ForEach(AccountSettings.allCases, id: \.self) { setting in
                            SettingButton(title: setting.title)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Настройки")
                            .font(.headline)
                            .padding(.leading, 20)
                        
                        ForEach(GeneralSettings.allCases, id: \.self) { setting in
                            SettingButton(title: setting.title)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Preferences")
                            .font(.headline)
                            .padding(.leading, 20)
                        
                        ForEach(GeneralSettings.allCases, id: \.self) { setting in
                            SettingButton(title: setting.title)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Support")
                            .font(.headline)
                            .padding(.leading, 20)
                        
                        ForEach(GeneralSettings.allCases, id: \.self) { setting in
                            SettingButton(title: setting.title)
                        }
                    }
                    
                }
                .padding(.top, 20)
            }
            .navigationTitle("Настройки")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            // Кастомизация кнопки закрытия, если нужно
                    }
                }
            }
        }
    }
}
