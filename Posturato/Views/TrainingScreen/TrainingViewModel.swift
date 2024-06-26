//
//  HomeViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation

class TrainingViewModel: ObservableObject {
    @Published var selectedWorkoutIndex = 0
    @Published var workouts: [Workout] = []
    @Published var recommendedWorkouts: [Workout] = []
    @Published var quickAndEasyWorkouts: [Workout] = []
    @Published var everyDayWorkouts: [Workout] = []

    init() {
        recommendedWorkouts = [morningWorkoutDay1,basicPostureWorkoutDay1,legStretchingWorkout]
        quickAndEasyWorkouts = [officeWorkoutDay1,middayBackRelaxationWorkoutDay1]
        everyDayWorkouts = [eveningStretchWorkoutDay1,morningWorkoutDay1]
    }
}
