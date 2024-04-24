//
//  TrainingView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingView: View {
    @StateObject var viewModel = TrainingViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Выберите тренировку:")
                        .font(.title2)
                        .padding()

                    ForEach(viewModel.workouts.indices, id: \.self) { index in
                        NavigationLink(destination: DetailView(workout: viewModel.workouts[index])) {
                            Text("Подробнее о тренировке \(index + 1)")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .navigationTitle("Training")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}
