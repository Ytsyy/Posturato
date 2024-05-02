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
            return lhsViewModel.workout == rhsViewModel.workout
        default:
            return false
        }
    }

    func hash(into hasher: inout Hasher) {
        switch self {
        case .workoutDetail(let workout):
            hasher.combine(workout.id) // Assuming Workout has an 'id' property
        case .workout(let workoutViewModel):
            hasher.combine(workoutViewModel.workout.id) // Assuming Workout has an 'id' property
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
        path.removeAll()
    }
}


class WorkoutViewModel: ObservableObject {
    @Published internal var workout: Workout // Изменен уровень доступа на internal
    @Published var currentStep: Step
    private var exerciseIndex: Int = 0
    
    enum Step: Equatable {
        case exercise(Exercise)
        case rest
        case finish
    }
    
    init(workout: Workout) {
        self.workout = workout
        self.currentStep = .exercise(workout.exercises.first!)
    }
    
    func nextStep() {
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
    }
    
    func addTime() {
        // Логика добавления времени на таймере
    }
    
    func skip() {
        nextStep()
    }
}

struct WorkoutView: View {
    @ObservedObject var viewModel: WorkoutViewModel

    var body: some View {
        switch viewModel.currentStep {
        case .exercise(let exercise):
            WorkoutExerciseView(viewModel: viewModel, exercise: exercise)
        case .rest:
            RestView(viewModel: viewModel)
        case .finish:
            FinishView()
        }
    }
}
