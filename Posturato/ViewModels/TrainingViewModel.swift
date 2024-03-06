//
//  HomeViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation

class TrainingViewModel: ObservableObject {
    @Published var trainings: [Training] = []

    init() {
        loadTrainings()
    }
    
    func loadTrainings() {
        // Здесь должен быть код для загрузки данных из базы данных

        self.trainings = [
            Training(name: "Разминка верхней части тела", imageName: "upper_body_warmup", type: .office),
            Training(name: "Разминка всего тела #1", imageName: "full_body_warmup_1", type: .office),

        ]
    }
}
