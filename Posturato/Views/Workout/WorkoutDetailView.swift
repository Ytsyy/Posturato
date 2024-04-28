//
//  WorkoutDetailView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI


struct DetailView: View {
    var workout: Workout

    var body: some View {
        NavigationStack {
            List(workout.exercises, id: \.id) { exercise in
                HStack {
                    VStack(alignment: .leading) {
                        Text(exercise.name.uppercased()) // Название упражнения заглавными
                            .font(.headline)
                        Text(exercise.details) // Описание упражнения
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    if let imageName = exercise.image, let image = UIImage(named: imageName) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50) // Размер картинки
                            .cornerRadius(10)
                    }
                }
            }
            .navigationTitle(workout.name) // Название тренировки
            .toolbar(.hidden, for: .tabBar)

            NavigationLink(destination: WorkoutView(workout: workout)) {
                Text("Начать тренировку")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .buttonStyle(PlainButtonStyle())  // Убираем стандартный стиль кнопки для NavigationLink
        }
    }
}
