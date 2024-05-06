//
//  TrainingView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingView: View {
    @StateObject var viewModel = TrainingViewModel()
    @StateObject var router = TrainingRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ScrollView {
                VStack {
                    Text("Выберите тренировку:")
                        .font(.title2)
                        .padding()
                    
                    ForEach(viewModel.workouts.indices, id: \.self) { index in
                        NavigationLink(
                            destination: WorkoutDetailView(workout: viewModel.workouts[index], router: router)
                        ) {
                            Text("Подробнее о тренировке \(index + 1)")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .navigationTitle("Training")
        }
    }
}

//FUTURE - new view
/*
struct TrainingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Browse by Area")
                    .font(.title2)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(), GridItem()]) {
                        ForEach(MuscleGroup.allCases, id: \.self) { muscleGroup in
                            VStack {
                                Image(systemName: "figure.walk") 
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text(muscleGroup.rawValue)
                            }
                            .frame(width: 100, height: 100)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(10)
                            .padding(.vertical)
                        }
                    }
                    .padding(.horizontal)
                }
                
                // Recommended
                Text("Recommended")
                    .font(.title2)
                    .padding([.horizontal, .top])

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        WorkoutCardView(workout: basicPostureWorkoutDay1)
                    }
                    .padding(.horizontal)
                }
                
                Text("Quick & Easy")
                    .font(.title2)
                    .padding([.horizontal, .top])

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        WorkoutCardView(workout: legStretchingWorkout)
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle("Training")
    }
}
*/
