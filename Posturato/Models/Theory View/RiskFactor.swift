//
//  RiskFactor.swift
//  Posturato
//
//  Created by Maxim on 13.05.2024.
//

import Foundation

struct RiskFactor: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String?
    let videoURL: URL?
}

class RiskFactorModel {
    static let riskFactors: [RiskFactor] = [
        RiskFactor(name: "Sedentary Lifestyle", description: "Lack of physical activity", image: "sedentary", videoURL: nil),
        RiskFactor(name: "Poor Ergonomics", description: "Improper workstation setup", image: "ergonomics", videoURL: nil),
        RiskFactor(name: "Obesity", description: "Excess body weight", image: "obesity", videoURL: nil),
        RiskFactor(name: "Age", description: "Increased risk with age", image: "AgeFactor", videoURL: nil),
    ]
}
