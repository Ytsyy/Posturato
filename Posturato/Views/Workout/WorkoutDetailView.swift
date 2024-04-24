//
//  WorkoutDetailView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI


struct DetailView: View {
    var workout: Workout
    @State private var isShowingExerciseView = false
    @State private var currentExerciseIndex = 0  // индекс текущего упражнения

    var body: some View {
        VStack {
            // Другой контент
            Button("Начать тренировку") {
                self.isShowingExerciseView = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)

            if isShowingExerciseView && workout.exercises.indices.contains(currentExerciseIndex) {
                let exercise = workout.exercises[currentExerciseIndex]
                let viewModel = ExerciseViewModel(duration: 20) // предположим, что у всех 20 секунд
                NavigationLink(destination: ExerciseView(viewModel: viewModel, exercise: exercise, onComplete: {
                    // Логика для перехода к следующему упражнению или закрытия
                    self.isShowingExerciseView = false
                    currentExerciseIndex += 1
                    if currentExerciseIndex >= workout.exercises.count {
                        // Завершение тренировки
                    } else {
                        self.isShowingExerciseView = true  // Для следующего упражнения
                    }
                }), isActive: $isShowingExerciseView) {
                    EmptyView()
                }
            }
        }
    }
}
