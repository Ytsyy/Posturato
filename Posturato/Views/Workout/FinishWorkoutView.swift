//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI


struct FinishWorkoutView: View {
    @ObservedObject var viewModel: FinishWorkoutViewModel

    var body: some View {
        VStack {
            Text("Тренировка завершена!")
                .font(.title)
            Button("Закрыть") {
                viewModel.closeWorkout()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
