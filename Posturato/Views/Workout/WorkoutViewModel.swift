//
//  WorkoutViewModel.swift
//  Posturato
//
//  Created by Maxim on 30.04.2024.
//

import Foundation
import Combine
import SwiftUI

class WorkoutViewModel: ObservableObject {
    @Published var currentStep: Step
    @Published var remainingTime: Int
    private var exerciseIndex: Int = 0
    private var timer: Timer?

    internal let workout: Workout

    enum Step {
        case exercise(Exercise)
        case rest
        case finish
    }

    init(workout: Workout) {
        self.workout = workout
        self.currentStep = .exercise(workout.exercises.first!)
        self.remainingTime = workout.durations.first ?? 0
    }

    var currentExercise: Exercise? {
        if exerciseIndex < workout.exercises.count {
            return workout.exercises[exerciseIndex]
        }
        return nil
    }

    var nextExercise: Exercise? {
        if exerciseIndex + 1 < workout.exercises.count {
            return workout.exercises[exerciseIndex + 1]
        }
        return nil
    }

    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            DispatchQueue.main.async {
                self?.updateTimer()
            }
        }
    }

    func updateTimer() {
        if self.remainingTime > 0 {
            self.remainingTime -= 1
        } else {
            nextStep()
        }
    }

    func addTime() {
        self.remainingTime += 10
    }

    func skip() {
        self.nextStep()
    }

    func startWorkout() {
        if timer == nil, case .exercise = currentStep {
            startTimer()
        }
    }

    private func nextStep() {
        switch currentStep {
        case .exercise:
            if exerciseIndex + 1 < workout.exercises.count {
                exerciseIndex += 1
                currentStep = .rest
                remainingTime = 10 
            } else {
                currentStep = .finish
                timer?.invalidate()
            }
        case .rest:
            if exerciseIndex < workout.exercises.count {
                currentStep = .exercise(workout.exercises[exerciseIndex])
                remainingTime = workout.durations[exerciseIndex]
            } else {
                currentStep = .finish
                timer?.invalidate()
            }
        case .finish:
            timer?.invalidate()
        }
        startTimer()
    }

    func resetWorkout() {
        self.currentStep = .exercise(workout.exercises.first!)
        self.remainingTime = workout.durations.first ?? 0
        self.exerciseIndex = 0
        startTimer()
    }
}
