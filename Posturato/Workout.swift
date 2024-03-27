//
//  Workout.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation

struct Workout: Identifiable {
    let id: UUID
    let name: String
    let description: String
    var exercises: [WorkoutExercise]
    
    init(id: UUID = UUID(), name: String, description: String, exercises: [WorkoutExercise]) {
        self.id = id
        self.name = name
        self.description = description
        self.exercises = exercises
    }

    struct WorkoutExercise {
        let exercise: Exercise
        var duration: Int // Длительность упражнения в секундах
    }
}

let postureWorkout = Workout(
    id: UUID(),
    name: "Тренировка для улучшения осанки",
    description: "Комплекс упражнений направлен на укрепление мышц, отвечающих за правильную осанку.",
    exercises: postureExercises.map { Workout.WorkoutExercise(exercise: $0, duration: 60) } 
)

