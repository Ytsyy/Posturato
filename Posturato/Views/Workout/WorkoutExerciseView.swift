//
//  WorkoutExerciseView.swift
//  Posturato
//
//  Created by Maxim on 30.04.2024.
//

import Foundation
import SwiftUI
import Combine

struct ExerciseView: View {
    var exercise: Exercise
    @ObservedObject var viewModel: WorkoutViewModel
    @State private var detailText: String? = nil // Optional состояние для деталей

    var body: some View {
        VStack {
            Spacer()
            
            Text(exercise.name)
                .font(.largeTitle)
                .padding()
            
            if let imageUrl = exercise.image {
                Image(imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.horizontal)
            }
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.2)) { // Ускоренная анимация
                    if detailText == nil {
                        detailText = exercise.details
                    } else {
                        detailText = nil
                    }
                }
            }) {
                Text("Details")
                    .font(.body)
                    .foregroundColor(.blue)
                    .underline()
                    .padding(.top)
            }

            if let details = detailText {
                ScrollView { // Добавление ScrollView для прокрутки текста
                    Text(details)
                        .padding()
                        .transition(.opacity)
                }
                .frame(maxHeight: 200) // Ограничение высоты ScrollView
            }
            
            Spacer()
            
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
                .padding(.bottom)
            
            Spacer()
            
            HStack(spacing: 30) {
                Button(action: {
                    viewModel.addTime()
                }) {
                    Text("+10 сек")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    viewModel.skip()
                }) {
                    Text("Пропустить")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.bottom, 80) // Увеличенный отступ снизу
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("LightBeige"))
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Workout Exercise")
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}
