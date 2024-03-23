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
    @State private var showWorkoutSession = false

    var body: some View {
        VStack {
            // Детали тренировки
            Text(workout.name)
                .font(.title)
            
            Button("Начать тренировку") {
                showWorkoutSession = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .fullScreenCover(isPresented: $showWorkoutSession) {
            WorkoutSessionView(workout: workout, viewModel: viewModel)
        }
    }
}
