//
//  WorkoutSessionViewModel.swift
//  Posturato
//
//  Created by Maxim on 05.04.2024.
//

import Foundation
import SwiftUI

class WorkoutSessionViewModel: ObservableObject {
    @Published var currentExerciseIndex = 0
    @Published var showFinishWorkoutScreen = false
    var workout: Workout
    var trainingViewModel: TrainingViewModel
    var isTrainingActive: Binding<Bool>
    
    init(workout: Workout, isTrainingActive: Binding<Bool>, trainingViewModel: TrainingViewModel) {
        self.workout = workout
        self.isTrainingActive = isTrainingActive
        self.trainingViewModel = trainingViewModel
    }
    
    func goToNextExercise() {
        if currentExerciseIndex + 1 < workout.exercises.count {
            currentExerciseIndex += 1
        } else {
            showFinishWorkoutScreen = true
        }
    }
}
