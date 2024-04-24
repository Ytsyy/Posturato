//
//  HomeViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation


class TrainingViewModel: ObservableObject {
    @Published var selectedWorkoutIndex = 0

    init() {
        // Initialize workouts here, for example:
        workouts = [globalWorkout]
    }

    @Published var workouts: [Workout] = []
}
