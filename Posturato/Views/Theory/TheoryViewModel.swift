//
//  TheoryViewModel.swift
//  Posturato
//
//  Created by Maxim on 20.04.2024.
//

import Foundation

class TheoryViewModel: ObservableObject {
    @Published var exercises: [Exercise]

    init() {
        // Предполагается, что `globalExercises` - это глобальная переменная, доступная в вашем проекте
        self.exercises = postureBasicExercises
    }
}
