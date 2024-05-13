//
//  PostureBasi.swift
//  Posturato
//
//  Created by Maxim on 13.05.2024.
//

import Foundation

struct PostureBasic: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let image: String?
    let videoURL: URL?
}

class PostureBasicModel {
    static let postureBasics: [PostureBasic] = [
        PostureBasic(title: "Standing Posture", description: "Maintain a neutral spine", image: "standing_posture", videoURL: nil),
        PostureBasic(title: "Sitting Posture", description: "Sit with your back straight", image: "SittingAtComputer", videoURL: nil),
        PostureBasic(title: "Sleeping Posture", description: "Sleep on your side or back", image: "sleeping_posture", videoURL: nil),
        PostureBasic(title: "Lifting Posture", description: "Lift with your knees, not your back", image: "LiftingPosture", videoURL: nil),
    ]
}
