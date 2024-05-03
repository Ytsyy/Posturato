//
//  WorkoutViewModel.swift
//  Posturato
//
//  Created by Maxim on 30.04.2024.
//

import Foundation
import Combine
import SwiftUI

enum TrainingRoute: Hashable, Equatable {
    case workoutDetail(workout: Workout)
    case workout(workoutViewModel: WorkoutViewModel)
    
    static func == (lhs: TrainingRoute, rhs: TrainingRoute) -> Bool {
        switch (lhs, rhs) {
        case (.workoutDetail(let lhsWorkout), .workoutDetail(let rhsWorkout)):
            return lhsWorkout == rhsWorkout
        case (.workout(let lhsViewModel), .workout(let rhsViewModel)):
            return lhsViewModel.workout.id == rhsViewModel.workout.id
        default:
            return false
        }
    }

    func hash(into hasher: inout Hasher) {
        switch self {
        case .workoutDetail(let workout):
            hasher.combine(workout.id)
        case .workout(let workoutViewModel):
            hasher.combine(workoutViewModel.workout.id)
        }
    }
}
final class TrainingRouter: ObservableObject {
    @Published var path = [TrainingRoute]()
    
    func showWorkoutDetail(workout: Workout) {
        path.append(.workoutDetail(workout: workout))
    }

    func startWorkout(workout: Workout) {
        let workoutViewModel = WorkoutViewModel(workout: workout)
        path.append(.workout(workoutViewModel: workoutViewModel))
    }

    func backToRoot() {
        path = []
    }
}

class WorkoutViewModel: ObservableObject {
    @Published var currentStep: Step
    internal let workout: Workout
    private var exerciseIndex: Int = 0
    private var timer: Timer?
    @Published var remainingTime: Int

    enum Step: Equatable {
        case exercise(Exercise)
        case rest
        case finish
    }
    
    init(workout: Workout) {
        self.workout = workout
        self.currentStep = .exercise(workout.exercises.first!)
        self.remainingTime = workout.durations.first ?? 10
        startTimer()
    }
    
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                if self.remainingTime > 0 {
                    self.remainingTime -= 1
                } else {
                    self.nextStep()
                }
            }
        }
    }
    
    func addTime() {
        DispatchQueue.main.async {
            self.remainingTime += 10
        }
    }

    func skip() {
        DispatchQueue.main.async {
            self.nextStep()
        }
    }
    
    private func nextStep() {
        timer?.invalidate()
        switch currentStep {
        case .exercise:
            exerciseIndex += 1
            if exerciseIndex < workout.exercises.count {
                currentStep = .rest
            } else {
                currentStep = .finish
            }
        case .rest:
            currentStep = .exercise(workout.exercises[exerciseIndex])
        case .finish:
            break
        }

        if case .exercise = currentStep {
            remainingTime = workout.durations[exerciseIndex]
        } else {
            remainingTime = 10 // sec
        }

        startTimer()
    }
}


struct WorkoutView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    var router: TrainingRouter

    var body: some View {
        switch viewModel.currentStep {
        case .exercise(let exercise):
            WorkoutExerciseView(viewModel: viewModel, exercise: exercise)
        case .rest:
            RestView(viewModel: viewModel)
        case .finish:
            FinishView(router: router)
        }
    }
}
