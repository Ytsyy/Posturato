//
//  Workout.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation

struct Workout: Equatable, Hashable,Identifiable{
    let id: UUID
    let name: String
    let description: String
    let exercises: [Exercise]
    let image: String?
    var durations: [Int]
}


var selectedExercises = postureBasicExercises
let basicPostureWorkoutDay1 = Workout(
    id: UUID(),
    name: "Improving posture",
    description: "This basic workout is for improving your posture",
    exercises: selectedExercises,
    image: "BasicTrainingImg",
    durations: Array(repeating: 10, count: selectedExercises.count)
)
let basicPostureWorkoutDay2 = createWorkoutDay(from: basicPostureWorkoutDay1, addSeconds: 5)
let basicPostureWorkoutDay3 = createWorkoutDay(from: basicPostureWorkoutDay1, addSeconds: 10)




let legStretchingWorkout = Workout(
    id: UUID(),
    name: "Leg Stretching",
    description: "This workout focuses on stretching and improving flexibility in your legs.",
    exercises: legStretchingExercises,
    image: "LegStretching",
    durations: Array(repeating: 10, count: legStretchingExercises.count)
)


// MARK: - Workout Methods
func createWorkoutDay(from workout: Workout, addSeconds: Int) -> Workout {
    let newDurations = workout.durations.map { $0 + addSeconds }
    return Workout(
        id: UUID(),
        name: workout.name,
        description: workout.description,
        exercises: workout.exercises,
        image: workout.image,
        durations: newDurations
    )
}
