//
//  WorkoutSessionView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct ExerciseView: View {
    @ObservedObject var viewModel: ExerciseViewModel
    var exercise: Exercise
    var onComplete: () -> Void
    
    var body: some View {
        VStack {
            Text(exercise.name)
                .font(.largeTitle)
            if let imageName = exercise.image {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            }
            Text("\(viewModel.secondsRemaining) секунд")
                .font(.headline)
            
            Button("Пропустить") {
                viewModel.timer?.cancel()
                onComplete()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .onAppear {
            viewModel.startTimer {
                onComplete()  // Перейти к отдыху или следующему упражнению
            }
        }
    }
}
