//
//  WorkoutDetailView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI
import Combine


struct WorkoutDetailView: View {
    var workout: Workout

    var body: some View {
        VStack {
            Text(workout.name)
                .font(.title)
                .padding()
            
            Text(workout.description)
                .padding()
            
            NavigationLink(destination: WorkoutView(viewModel: WorkoutViewModel(workout: workout))) {
                Text("Начать тренировку")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Workout Details")
    }
}
