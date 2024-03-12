//
//  HomeView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingScreen: View {
    @ObservedObject var viewModel = TrainingViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Picker("Choice training", selection: .constant(0)) {
                        Text("All training").tag(0)
                        Text("Favourits").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    
                    NavigationLink(destination: TrainingDetailView(trainings: viewModel.trainings)) {
                        HStack {
                            Text("Basic training")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .bold()

                            Spacer()

                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                        .padding(.horizontal)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1) {
                            ForEach(viewModel.trainings) { training in
                                NavigationLink(destination: Text("Подробности ")){
                                    TrainingCardView(training: training)
                                }
                            }
                        }
                        .padding([.horizontal, .bottom])
                    }
                    
                    NavigationLink(destination: TrainingDetailView(trainings: viewModel.trainings)) {
                        HStack {
                            Text("Core training")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .bold()

                            Spacer()

                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                        .padding(.horizontal)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1) {
                            ForEach(viewModel.trainings) { training in
                                NavigationLink(destination: Text("Подробности ")){
                                    TrainingCardView(training: training)
                                }
                            }
                        }
                        .padding([.horizontal, .bottom])
                    }
                    
                    
                }
            }
            .customNavigationBar(title: "Training", onMenuTap: {
                // Реализация действия при нажатии на кнопку меню
            })
        }
    }
}
