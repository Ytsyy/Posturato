//
//  FinishWorkoutViewModel.swift
//  Posturato
//
//  Created by Maxim on 05.04.2024.
//

import Foundation
import SwiftUI

class FinishWorkoutViewModel: ObservableObject {
    var trainingViewModel: TrainingViewModel // Ссылка на модель представления тренировки, если требуется
    var isTrainingActive: Binding<Bool>
    
    init(trainingViewModel: TrainingViewModel, isTrainingActive: Binding<Bool>) {
        self.trainingViewModel = trainingViewModel
        self.isTrainingActive = isTrainingActive
    }
    
    func closeWorkout() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.isTrainingActive.wrappedValue = false
        }
    }
}
