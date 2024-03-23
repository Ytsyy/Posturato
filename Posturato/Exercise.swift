//
//  Exercise.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct Exercise: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let muscleGroups: [String]
    let photoURL: URL?
    let photoResource: String? // Имя ресурса изображения в Assets
    let videoURL: URL?

    init(id: UUID = UUID(), name: String, description: String, muscleGroups: [String], photoURL: URL? = nil, photoResource: String? = nil, videoURL: URL? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.muscleGroups = muscleGroups
        self.photoURL = photoURL
        self.photoResource = photoResource
        self.videoURL = videoURL
    }
}

let stretchExercises = [
    Exercise(name: "Поза ворота", description: "Это упражнение помогает растянуть бедра и бока.", muscleGroups: ["Бедра", "Бока"], photoResource: "gatePose", videoURL: URL(string: "https://example.com/gatePose.mp4")),
    Exercise(name: "Наклон к ноге", description: "Упражнение растягивает заднюю часть бедра.", muscleGroups: ["Задняя часть бедра"], photoResource: "legStretch", videoURL: URL(string: "https://example.com/legStretch.mp4"))
]

let postureExercises = [
    Exercise(
        name: "Растяжка кота",
        description: "Имитируйте движение кота, округляя спину вверх и вниз, чтобы улучшить гибкость позвоночника.",
        muscleGroups: ["Позвоночник"],
        photoResource: "catStretch",
        videoURL: nil
    ),
    Exercise(
        name: "Плечевые мосты",
        description: "Лягте на спину, согните колени и поднимайте таз, удерживая плечи на полу, чтобы укрепить нижнюю часть спины и ягодицы.",
        muscleGroups: ["Нижняя часть спины", "Ягодицы"],
        photoResource: "shoulderBridges",
        videoURL: nil
    ),
    Exercise(
        name: "Растяжка грудных мышц",
        description: "Используйте дверной косяк для растяжки грудных мышц, что способствует открытию грудной клетки и улучшению осанки.",
        muscleGroups: ["Грудные мышцы"],
        photoResource: "chestStretch",
        videoURL: nil
    )
]


