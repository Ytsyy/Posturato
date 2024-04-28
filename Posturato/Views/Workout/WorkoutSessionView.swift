//
//  WorkoutSessionView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct WorkoutView: View {
    var workout: Workout

    var body: some View {
        VStack {
            Text("Тренировка: \(workout.name)")
                .font(.title)
                .padding()

            // Добавьте дополнительный контент для WorkoutView
            Spacer()
        }
        .navigationTitle("Во время тренировки")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true) // Скрываем кнопку "Назад"
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EmptyView() // Убираем место, где обычно находится кнопка "Назад"
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}
