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
    let image: String?  // Теперь это имя файла изображения
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
        name: "cat_cow",
        details: "Описание",
        image: "cat_cow.png",
        videoURL: nil,
        targetMuscleGroups: [.glutes, .thighs]
    ),
    Exercise(
        id: UUID(),
        name: "Bird Dog",
        details: " Begin on your hands and knees, aligning your palms under your shoulders and knees under your hips. Activate your core to achieve a neutral spine. Lift your right hand and extend it forward while simultaneously extending your left leg back, keeping both at shoulder and hip height respectively. Hold this pose for a second, then return to the starting position and repeat on the opposite side ",
        image: "bird-Dog",
        videoURL: nil,
        targetMuscleGroups: [.shoulders, .neck]
    ),
    Exercise(
        id: UUID(),
        name: "Планка",
        details: "Встаньте в упор лежа в планку",
        image: "PlankImage",
        videoURL: nil,
        targetMuscleGroups: [.upperBack, .lowerBack]
    ),
    Exercise(
        id: UUID(),
        name: "Растяжка 'лебедь'",
        details: "Лягте на живот, руки вытяните перед собой. Медленно поднимайте голову, плечи и руки, держа ноги на полу. Задержитесь в этом положении на 5 секунд, затем опуститесь.",
        image: "swan_stretch.png",
        videoURL: nil,
        targetMuscleGroups: [.lowerBack, .shoulders]
    ),
    Exercise(
        id: UUID(),
        name: "Скручивания на пресс",
        details: "Лягте на спину, ноги согните в коленях, стопы на полу. Касаясь руками затылка, медленно поднимайте верх туловища от пола и опускайте обратно. Повторите 20 раз.",
        image: "crunches.png",
        videoURL: nil,
        targetMuscleGroups: [.abs]
    )
]
