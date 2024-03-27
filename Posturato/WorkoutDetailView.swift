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
    @Binding var isTrainingActive: Bool // Изменено здесь
    

    var body: some View {
        VStack {
            Text(workout.name)
                .font(.title)
            
            Button("Начать тренировку") {
                isTrainingActive = true // Изменено здесь
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .fullScreenCover(isPresented: $isTrainingActive) {
            WorkoutSessionView(workout: workout, viewModel: viewModel, isTrainingActive: $isTrainingActive) // Изменено здесь
        }
    }
}

