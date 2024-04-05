//
//  WorkoutDetailView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct WorkoutDetailView: View {
    var workout: Workout
    @ObservedObject var viewModel: TrainingViewModel
    @Binding var isTrainingActive: Bool

    var body: some View {
        // Обновите метку аргумента здесь
        WorkoutDetailContentView(workout: workout, trainingViewModel: viewModel, isTrainingActive: $isTrainingActive)
    }
}

