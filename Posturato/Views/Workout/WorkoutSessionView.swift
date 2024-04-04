//
//  WorkoutSessionView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct WorkoutSessionView: View {
    var workout: Workout
    @ObservedObject var viewModel: TrainingViewModel
    @Binding var isTrainingActive: Bool // Изменено здесь
    @State private var currentExerciseIndex = 0
    @State private var showFinishWorkoutScreen = false

    var body: some View {
        VStack {
            if currentExerciseIndex < workout.exercises.count {
                let exercise = workout.exercises[currentExerciseIndex].exercise
                Text(exercise.name)
                    .font(.title)
                // Отображение упражнения и таймера

                Button("Следующее упражнение") {
                    if currentExerciseIndex + 1 < workout.exercises.count {
                        currentExerciseIndex += 1
                    } else {
                        // Переход к экрану завершения тренировки
                        showFinishWorkoutScreen = true
                    }
                }
            } else {
                // Эта ветка, вероятно, уже не будет выполняться, так как переход на экран завершения обрабатывается выше
                EmptyView()
            }
        }
        .fullScreenCover(isPresented: $showFinishWorkoutScreen) {
            FinishWorkoutView(viewModel: viewModel, isTrainingActive: $isTrainingActive)
        }

    }
}


