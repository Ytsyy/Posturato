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
    var viewModel: TrainingViewModel
    @Binding var isTrainingActive: Bool 

    var body: some View {
        VStack {
            Text("Тренировка завершена!")
                .font(.title)
            Button("Закрыть") {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { // Задержка на 0.5 секунды
                    isTrainingActive = false
                }
            }

            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}



