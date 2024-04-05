//
//  WorkoutDetailViewModel.swift
//  Posturato
//
//  Created by Maxim on 04.04.2024.
//

import Foundation
import SwiftUI

struct WorkoutDetailContentView: View {
    var workout: Workout
    @ObservedObject var trainingViewModel: TrainingViewModel // Обновите здесь
    @Binding var isTrainingActive: Bool


    var body: some View {
        VStack {
            Text(workout.name)
                .font(.title)
            
            Button("Начать тренировку") {
                isTrainingActive = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .fullScreenCover(isPresented: $isTrainingActive) {
            // Передайте TrainingViewModel и isTrainingActive
            WorkoutSessionView(viewModel: WorkoutSessionViewModel(workout: workout, isTrainingActive: $isTrainingActive, trainingViewModel: trainingViewModel))
                }
    }
}

class WorkoutDetailViewModel: ObservableObject {
 
}
