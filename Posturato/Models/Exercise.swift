//
//  Exercise.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation


struct Exercise {
    let id: UUID
    let name: String
    let details: String
    let image: String?  
    let videoURL: URL?
    let targetMuscleGroups: [MuscleGroup]
}

enum MuscleGroup: String, CaseIterable {
    case upperBack = "Upper Back"
    case lowerBack = "Lower Back"
    case shoulders = "Shoulders"
    case neck = "Neck"
    case abs = "Abs"
    case chest = "Chest"
    case glutes = "Glutes"
    case thighs = "Thighs"
}

let postureBasicExercises: [Exercise] = [
    Exercise(
        id: UUID(),
        name: "Cat-cow",
        details: "The cat-cow stretch is performed on your hands and knees, alternating between arching your back up like a cat and then letting your belly drop towards the floor like a cow. This stretch helps to improve flexibility and mobility in the spine.",
        image: "cat_cow",
        videoURL: nil,
        targetMuscleGroups: [.neck, .upperBack, .lowerBack]
    ),
    Exercise(
        id: UUID(),
        name: "Bird Dog",
        details: "Begin on your hands and knees, aligning your palms under your shoulders and knees under your hips. Activate your core to achieve a neutral spine. Lift your right hand and extend it forward while simultaneously extending your left leg back, keeping both at shoulder and hip height respectively. Hold this pose for a second, then return to the starting position and repeat on the opposite side.",
        image: "bird-Dog",
        videoURL: nil,
        targetMuscleGroups: [.upperBack, .lowerBack, .abs]
    ),
    Exercise(
        id: UUID(),
        name: "Plank",
        details: "The plank is a core strength exercise that involves maintaining a position similar to a push-up for the maximum possible time. It engages multiple muscle groups including the abs, back, and shoulders.",
        image: "PlankImage",
        videoURL: nil,
        targetMuscleGroups: [.abs, .chest, .shoulders]
    ),
    Exercise(
        id: UUID(),
        name: "Chest Stretch",
        details: "This stretch is aimed at stretching and relaxing the muscles of the chest. Stand tall with your feet hip-width apart. Clasp your hands behind your back and gently lift them up until you feel a stretch in your chest. Hold for 20-30 seconds, then release.",
        image: "ChestStretch",
        videoURL: nil,
        targetMuscleGroups: [.chest]
    ),
    Exercise(
        id: UUID(),
        name: "Wall Angel",
        details: "The wall angel exercise is performed by standing with your back against a wall and raising your arms overhead to form a 'W' shape with your arms and body. This exercise targets the muscles in your shoulders and upper back while also helping to improve posture.",
        image: "WallAngel",
        videoURL: nil,
        targetMuscleGroups: [.upperBack, .shoulders]
    )
]
