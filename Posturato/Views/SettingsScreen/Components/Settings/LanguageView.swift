//
//  LanguageView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation
import SwiftUI

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
