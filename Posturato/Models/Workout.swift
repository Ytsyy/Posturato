//
//  Workout.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation

struct Workout{
    let id: UUID
    let name: String
    let description: String
    let exercises: [Exercise]
    let image: String?
    var durations: [Int]
}

var selectedExercises = postureBasicExercises
let globalWorkout = Workout(
    id: UUID(),
    name: "Improving posture",
    description: "This basic workout is for improving your posture",
    exercises: selectedExercises,
    image: "BasicTrainingImg",
    durations: Array(repeating: 0, count: selectedExercises.count)
)
