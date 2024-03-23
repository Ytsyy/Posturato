//
//  HomeView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

import SwiftUI

struct TrainingScreen: View {
    @ObservedObject var viewModel = TrainingViewModel()
    @State private var showingSettings = false
    @State private var selectedWorkout: Workout? // Изменено здесь
    
    @State private var isTrainingActive = false
    @State private var showFinishWorkoutScreen = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.workouts, id: \.id) { workout in // Убедитесь, что у Workout есть id
                    Button(action: {
                        selectedWorkout = workout // Исправлено здесь
                    }) {
                        WorkoutCell(workout: workout)
                    }
                    .buttonStyle(.plain)
                }
            }
            .customNavigationBar(title: "Training", onMenuTap: {
                showingSettings = true
            })
            .fullScreenCover(isPresented: $showingSettings) {
                SettingsView()
            }
            .sheet(item: $selectedWorkout) { workout in // Используйте sheet для отображения, когда selectedWorkout не nil
                WorkoutDetailView(workout: workout, viewModel: viewModel)
            }
        }
    }
}
