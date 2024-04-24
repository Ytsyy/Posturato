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
        self.exercises = postureBasicExercises
    }
}
