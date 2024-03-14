//
//  TrainingDetailView.swift
//  Posturato
//
//  Created by Maxim on 07.03.2024.
//
import SwiftUI

struct TrainingDetailView: View {
    var trainings: [Training]
    
    // Определение структуры сетки
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            // Создание сетки с двумя колонками
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(trainings) { training in
                    TrainingCardView(training: training)
                }
            }
            .padding() // Добавить некоторый отступ для краев сетки
        }
        .navigationBarTitle("Детали тренировок", displayMode: .inline)
    }
}

