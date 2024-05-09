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

    var body: some View {
        VStack {
            Spacer()
            
            Text("Exercise: \(exercise.name)")
                .font(.largeTitle)
                .padding()
            
            if let imageUrl = exercise.image {
                Image(imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.horizontal)
            }

            Text("Details: \(exercise.details)")
                .padding()
            
            Spacer()
            
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
                .padding(.bottom)
            
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
            .padding(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Workout Exercise")
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}
