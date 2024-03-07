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
                            Text("2 программ training")
                                .font(.headline)
                                .foregroundColor(.primary)

                            Spacer()

                            Image(systemName: "chevron.right")
                                .foregroundColor(.secondary)
                        }
                        .padding(.horizontal)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
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
