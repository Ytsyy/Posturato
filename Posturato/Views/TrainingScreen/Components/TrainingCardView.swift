//
//  TrainingCardView.swift
//  Posturato
//
//  Created by Maxim on 05.03.2024.
//

import SwiftUI

struct TrainingCardView: View {
    let training: Training

    var body: some View {
        VStack {
            Image(training.imageName) // Заменить на реальное изображение из базы данных
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
            Text(training.name)
                .fontWeight(.medium)
        }
        .frame(width: 150, height: 150)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct DetailView: View {
    var body: some View {
        Text("Детали тренировки")
    }
}
