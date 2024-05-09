//
//  WorkoutView.swift
//  Posturato
//
//  Created by Maxim on 08.05.2024.
//

import Foundation
import SwiftUI

struct WorkoutView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    @Binding var navigationPath: NavigationPath

    var body: some View {
        VStack {
            switch viewModel.currentStep {
            case .exercise(let exercise):
                ExerciseView(exercise: exercise, viewModel: viewModel)
                    .onAppear {
                        viewModel.startWorkout()
                    }
            case .rest:
                RestView(viewModel: viewModel)
            case .finish:
                FinishView(viewModel: viewModel, navigationPath: $navigationPath)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}
