//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI


struct FinishWorkoutView: View {
    @Environment(\.presentationMode) var presentationMode
    var viewModel: TrainingViewModel // Добавляем viewModel как свойство

    var body: some View {
        VStack {
            Text("Тренировка завершена!")
                .font(.title)
            // Здесь могут быть добавлены другие элементы UI, отображающие статистику тренировки
            
            Button("Закрыть") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}



