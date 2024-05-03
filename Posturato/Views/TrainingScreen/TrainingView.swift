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
