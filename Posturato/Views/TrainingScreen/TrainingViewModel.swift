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

    init() {
        recommendedWorkouts = [morningPostureWorkoutDay1,basicPostureWorkoutDay1,legStretchingWorkout]
        quickAndEasyWorkouts = [legStretchingWorkout]
    }
}
