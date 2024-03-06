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
                    Picker("Выбор тренировок", selection: .constant(0)) {
                        Text("Все тренировки").tag(0)
                        Text("Сохраненные").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()

                    ForEach(viewModel.trainings) { training in
                        TrainingCardView(training: training)
                    }
                }
            }
            .customNavigationBar(title: "Тренировки", onMenuTap: {
                            // Реализация действия при нажатии на кнопку меню
                        })
        }
    }
    
    
}
