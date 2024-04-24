//
//  RestView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import SwiftUI

struct RestView: View {
    @ObservedObject var viewModel: RestViewModel
    var onNextExercise: () -> Void  // Callback для перехода к следующему упражнению

    var body: some View {
        VStack {
            Text("Время отдыха")
                .font(.largeTitle)
            Text("\(viewModel.restTimeRemaining) секунд")
                .font(.headline)
            
            Button("Добавить 30 секунд") {
                viewModel.addTime(seconds: 30)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Button("Пропустить отдых") {
                viewModel.timer?.cancel()
                onNextExercise()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .onAppear {
            viewModel.startRestTimer {
                onNextExercise()  // Перейти к следующему упражнению по окончании отдыха
            }
        }
    }
}
