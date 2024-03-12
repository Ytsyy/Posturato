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
            Training(name: "Basic training", imageName: "upper_body_warmup", type: .office),
            Training(name: "Morning warm-up", imageName: "full_body_warmup_1", type: .office),
            Training(name: "Stratching", imageName: "full_body_warmup_1", type: .office),
            Training(name: "Evening routine", imageName: "full_body_warmup_1", type: .office),

        ]
    }
}
