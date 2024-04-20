//
//  TheoryView.swift
//  Posturato
//
//  Created by Maxim on 18.03.2024.
//

import Foundation
import SwiftUI

struct TheoryView: View {
    @ObservedObject var viewModel = TheoryViewModel()
    @State private var showingSettings = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Exercises")
                    .font(.title)
                    .padding(.leading, 15)
                    .padding(.top, 10)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 10) {  // Изменено расстояние между ячейками на 10 пунктов
                        ForEach(viewModel.exercises, id: \.id) { exercise in
                            ExerciseCell(exercise: exercise)
                                .frame(width: 120, height: 120)
                        }
                    }
                    .padding(.horizontal)
                }

                Spacer()
            }
            .customNavigationBar(title: "Theory", onMenuTap: {
                showingSettings = true
            })
            .fullScreenCover(isPresented: $showingSettings) {
                SettingsView()
            }
        }
    }
}

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        VStack {
            if let imageName = exercise.image {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 84)  // Указание высоты картинки
                    .cornerRadius(10)  // Закругление углов картинки
            }
            Text(exercise.name)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 4)  // Уменьшенный верхний отступ для названия
                .padding([.bottom, .horizontal], 8)  // Уменьшенные боковые и нижний отступы
        }
        .frame(width: 120, height: 120)  // Размеры ячейки
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 0, y: 2)  // Параметры тени
    }
}
