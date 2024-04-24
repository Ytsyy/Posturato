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
    var durations: [Int]  
}

var selectedExercises = postureBasicExercises
let workout = Workout(
    id: UUID(),
    name: "Улучшение осанки",
    description: "Эта тренировка нацелена на улучшение вашей осанки через ряд специализированных упражнений, направленных на ключевые группы мышц.",
    exercises: selectedExercises,
    durations: Array(repeating: 0, count: selectedExercises.count)  
)

let globalWorkout = workout
