//
//  HomeView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingScreen: View {
    @ObservedObject var viewModel = TrainingViewModel()
    @State private var showingSettings = false
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    StartTrainingCellView(title: "Your person training", day: "day 10", description: "description", imagePlaceholder: Image("PlankImage")) // Изменить на источник настоящих данных для инициализации
                        .padding(.bottom, 20)
                    
                    
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
                showingSettings = true
            })
            .fullScreenCover(isPresented: $showingSettings) {
                SettingsView()
            }
        }
    }
}
