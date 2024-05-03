//
//  WorkoutExerciseView.swift
//  Posturato
//
//  Created by Maxim on 30.04.2024.
//

import Foundation
import SwiftUI
struct WorkoutExerciseView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    var exercise: Exercise

    var body: some View {
        VStack {
            Text("Exercise: \(exercise.name)")
                .font(.largeTitle)
            
            // Таймер
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
            
            // Кнопка добавления времени
            Button(action: {
                viewModel.addTime()
            }) {
                Text("+10 сек")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            // Кнопка пропуска упражнения
            Button(action: {
                viewModel.skip()
            }) {
                Text("Пропустить")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Workout Exercise")
    }
}
