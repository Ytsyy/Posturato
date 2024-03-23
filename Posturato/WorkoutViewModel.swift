//
//  WorkoutViewModel.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation

class WorkoutViewModel: ObservableObject {
    @Published var workouts: [Workout] = []
    @Published var currentExerciseIndex: Int = 0
    @Published var isWorkoutActive: Bool = false
    @Published var isWorkoutCompleted: Bool = false

    // Загрузите ваши тренировки здесь
    func loadWorkouts() {
        // Здесь должна быть логика загрузки тренировок
    }

    func startWorkout(with workout: Workout) {
        self.currentExerciseIndex = 0
        self.isWorkoutActive = true
        // Здесь должна быть логика запуска тренировки
    }

    func nextExercise() {
        // Переключиться на следующее упражнение или завершить тренировку
        if currentExerciseIndex < workouts.first?.exercises.count ?? 0 - 1 {
            currentExerciseIndex += 1
        } else {
            finishWorkout()
        }
    }

    func finishWorkout() {
        self.isWorkoutActive = false
        self.isWorkoutCompleted = true
        // Здесь может быть логика сохранения статистики тренировки
    }
}

