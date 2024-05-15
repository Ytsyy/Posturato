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


let basicPostureWorkoutDay1 = Workout(
    id: UUID(),
    name: "Improving Posture",
    description: "This basic workout is for improving your posture.",
    exercises: [catCow, birdDog, plank, chestStretch, wallAngel],
    image: "BasicTrainingImg",
    durations: [30, 30, 30, 30, 30]
)
let basicPostureWorkoutDay2 = createWorkoutDay(from: basicPostureWorkoutDay1, addSeconds: 5)
let basicPostureWorkoutDay3 = createWorkoutDay(from: basicPostureWorkoutDay1, addSeconds: 10)


let legStretchingWorkout = Workout(
    id: UUID(),
    name: "Leg Stretching",
    description: "A light workout focused on stretching and relaxing the leg muscles.",
    exercises: [hamstringStretch, quadStretch, calfStretch],
    image: "SimpleWorkout",
    durations: [30, 30, 30]
)

let morningWorkoutDay1 = Workout(
    id: UUID(),
    name: "Morning Workout",
    description: "A light morning workout for improving posture.",
    exercises: [catStretch, hipFlexorStretch, chestOpenerStretch, birdDog, childsPose],
    image: "MorningWorkout",
    durations: [30, 30, 30, 30, 30]
)

let officeWorkoutDay1 = Workout(
    id: UUID(),
    name: "Office Workout",
    description: "A light workout to improve posture while working in the office.",
    exercises: [
        neckStretchSitting,
        shoulderShrugs,
        seatedTorsoTwist,
        wristStretch,
        seatedLegExtension
    ],
    image: "OfficeWokout",
    durations: [30, 30, 30, 30, 30]
)

let middayBackRelaxationWorkoutDay1 = Workout(
    id: UUID(),
    name: "Midday Relaxation",
    description: "A light workout to relax the lower back and spine during the workday.",
    exercises: [
        seatedForwardBend,
        catCowStretchSitting,
        standingBackExtension,
        seatedSpinalTwist
    ],
    image: "midday_back_relaxation_workout",
    durations: [30, 30, 30, 30, 30]
)

let eveningStretchWorkoutDay1 = Workout(
    id: UUID(),
    name: "Evening stretch",
    description: "A gentle evening workout focused on slow stretching of muscles before sleep.",
    exercises: [
        recliningBoundAngle,
        supineSpinalTwist,
        legsUpTheWall,
        seatedForwardBendYoga,
        childsPose
    ],
    image: "EveningWorkout",
    durations: [120, 60, 120, 60, 60]
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
