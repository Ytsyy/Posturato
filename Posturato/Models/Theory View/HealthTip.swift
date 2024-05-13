//
//  HealthTip.swift
//  Posturato
//
//  Created by Maxim on 13.05.2024.
//

import Foundation

struct HealthTip: Identifiable {
    let id = UUID()
    let title: String
    let details: String
    let image: String?
    let videoURL: URL?
}

class HealthTipModel {
    static let healthTips: [HealthTip] = [
        HealthTip(title: "Stretch Regularly", details: "Stretching improves flexibility", image: "Sport", videoURL: nil),
        HealthTip(title: "Walk 8000 steps per day", details: "Every day", image: "Walk", videoURL: nil),
        HealthTip(title: "Maintain a Balanced Diet", details: "Eating a balanced diet is essential", image: "balanced_diet", videoURL: nil),
        HealthTip(title: "Get Enough Sleep", details: "Sleep is essential for recovery", image: "Sleep", videoURL: nil),
    ]
}
