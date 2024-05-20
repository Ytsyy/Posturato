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
    @Binding var navigationPath: NavigationPath

    var body: some View {
        ZStack {
            Color("LightBeige")
                .ignoresSafeArea()

            VStack {
                if let imageName = workout.image {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                }
                
                Text(workout.name)
                    .font(.title)
                    .padding()
                
                Text(workout.description)
                    .padding()
                
                Button(action: {
                    navigationPath.append("workout-\(workout.id)")
                }) {
                    Text("Начать тренировку")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("Workout Details")
        .navigationDestination(for: String.self) { destination in
            if destination == "workout-\(workout.id)" {
                WorkoutView(viewModel: WorkoutViewModel(workout: workout), navigationPath: $navigationPath)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}
