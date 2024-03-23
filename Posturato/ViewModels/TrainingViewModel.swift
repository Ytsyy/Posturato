//
//  HomeViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation

class TrainingViewModel: ObservableObject {
    @Published var workouts: [Workout] = []

    init() {
        loadWorkouts()
    }

    func loadWorkouts() {
        // Добавление тренировки для осанки в список тренировок
        workouts.append(postureWorkout)
    }
}

