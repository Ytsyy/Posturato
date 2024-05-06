//
//  TheoryModel.swift
//  Posturato
//
//  Created by Maxim on 06.05.2024.
//

import Foundation


struct PostureDisorder: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String?
    let videoURL: URL?
}

struct HealthTip: Identifiable {
    let id = UUID()
    let title: String
    let details: String
    let image: String?
    let videoURL: URL?
}

struct PostureBasic: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let image: String?
    let videoURL: URL?
}

struct RiskFactor: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String?
    let videoURL: URL?
}

class ExerciseModel {
    static let exercises: [Exercise] = [
        Exercise(id: UUID(), name: "Push Up", details: "Upper body exercise", image: "pushup", videoURL: nil, targetMuscleGroups: [.chest]),
        Exercise(id: UUID(), name: "Squat", details: "Leg exercise", image: "squat", videoURL: nil, targetMuscleGroups: []),
        Exercise(id: UUID(), name: "Plank", details: "Core exercise", image: "plank", videoURL: nil, targetMuscleGroups: []),
        Exercise(id: UUID(), name: "Lunge", details: "Leg exercise", image: "lunge", videoURL: nil, targetMuscleGroups: []),
    ]
}

class PostureDisorderModel {
    static let postureDisorders: [PostureDisorder] = [
        PostureDisorder(name: "Kyphosis", description: "Excessive curvature of the upper back", image: "kyphosis", videoURL: nil),
        PostureDisorder(name: "Scoliosis", description: "Abnormal curvature of the spine", image: "scoliosis", videoURL: nil),
        PostureDisorder(name: "Lordosis", description: "Excessive curvature of the lower back", image: "lordosis", videoURL: nil),
        PostureDisorder(name: "Forward Head Posture", description: "Head positioned forward", image: "forward_head", videoURL: nil),
    ]
}

class HealthTipModel {
    static let healthTips: [HealthTip] = [
        HealthTip(title: "Stretch Regularly", details: "Stretching improves flexibility", image: "stretch", videoURL: nil),
        HealthTip(title: "Walk 8000 steps per day", details: "Every day", image: "Walk", videoURL: nil),
        HealthTip(title: "Maintain a Balanced Diet", details: "Eating a balanced diet is essential", image: "balanced_diet", videoURL: nil),
        HealthTip(title: "Get Enough Sleep", details: "Sleep is essential for recovery", image: "sleep", videoURL: nil),
    ]
}

class PostureBasicModel {
    static let postureBasics: [PostureBasic] = [
        PostureBasic(title: "Standing Posture", description: "Maintain a neutral spine", image: "standing_posture", videoURL: nil),
        PostureBasic(title: "Sitting Posture", description: "Sit with your back straight", image: "SittingAtComputer", videoURL: nil),
        PostureBasic(title: "Sleeping Posture", description: "Sleep on your side or back", image: "sleeping_posture", videoURL: nil),
        PostureBasic(title: "Lifting Posture", description: "Lift with your knees, not your back", image: "lifting_posture", videoURL: nil),
    ]
}

class RiskFactorModel {
    static let riskFactors: [RiskFactor] = [
        RiskFactor(name: "Sedentary Lifestyle", description: "Lack of physical activity", image: "sedentary", videoURL: nil),
        RiskFactor(name: "Poor Ergonomics", description: "Improper workstation setup", image: "ergonomics", videoURL: nil),
        RiskFactor(name: "Obesity", description: "Excess body weight", image: "obesity", videoURL: nil),
        RiskFactor(name: "Age", description: "Increased risk with age", image: "age", videoURL: nil),
    ]
}
