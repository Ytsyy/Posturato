//
//  TheoryViewModel.swift
//  Posturato
//
//  Created by Maxim on 20.04.2024.
//

import Foundation

class TheoryViewModel: ObservableObject {
    let exercises: [Exercise] = ExerciseModel.exercises
    let postureDisorders: [PostureDisorder] = PostureDisorderModel.postureDisorders
    let healthTips: [HealthTip] = HealthTipModel.healthTips
    let postureBasics: [PostureBasic] = PostureBasicModel.postureBasics
    let riskFactors: [RiskFactor] = RiskFactorModel.riskFactors
}
