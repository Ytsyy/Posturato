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
