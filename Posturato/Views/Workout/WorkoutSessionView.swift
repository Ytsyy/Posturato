//
//  WorkoutSessionView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct WorkoutSessionView: View {
    @ObservedObject var viewModel: WorkoutSessionViewModel

    var body: some View {
        VStack {
            if viewModel.currentExerciseIndex < viewModel.workout.exercises.count {
                let exercise = viewModel.workout.exercises[viewModel.currentExerciseIndex].exercise
                Text(exercise.name)
                    .font(.title)
                // Display of exercise and timer

                Button("Следующее упражнение") {
                    viewModel.goToNextExercise()
                }
            } else {
                EmptyView()
            }
        }
        .fullScreenCover(isPresented: $viewModel.showFinishWorkoutScreen) {
            FinishWorkoutView(viewModel: FinishWorkoutViewModel(trainingViewModel: viewModel.trainingViewModel, isTrainingActive: viewModel.isTrainingActive))
        }
    }
}


