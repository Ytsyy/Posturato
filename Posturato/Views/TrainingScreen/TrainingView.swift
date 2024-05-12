//
//  TrainingView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingView: View {
    @StateObject var viewModel = TrainingViewModel()
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Recommended")
                        .font(.title2)
                        .padding([.horizontal, .top])
                        .foregroundStyle(.gray)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(viewModel.recommendedWorkouts) { workout in
                                NavigationLink(value: workout) {
                                    WorkoutCardView(workout: workout)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Quick & Easy")
                        .font(.title2)
                        .padding([.horizontal, .top])
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(viewModel.quickAndEasyWorkouts) { workout in
                                NavigationLink(value: workout) {
                                    WorkoutCardView(workout: workout)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Daily Workouts for Posture Maintenance")
                        .font(.title2)
                        .padding([.horizontal, .top])
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(viewModel.everyDayWorkouts) { workout in
                                NavigationLink(value: workout) {
                                    WorkoutCardView(workout: workout)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
            }
            
            
            .navigationTitle("Training")
            .navigationDestination(for: Workout.self) { workout in
                WorkoutDetailView(workout: workout, navigationPath: $navigationPath)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}
