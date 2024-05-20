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
        SedentaryLifestyleFactor,
        PoorErgonomicsFactor,
        AgeFactor,
        ExcessWeightFactor,
    ]
}

let AgeFactor: RiskFactor = RiskFactor(name: "Age", description: """
    Wear and Tear: As we age, our bodies naturally experience wear and tear. This can affect the spine, leading to conditions like osteoarthritis, spinal stenosis, and degenerative disc disease. These conditions can cause pain, stiffness, and changes in posture.
    Muscle Loss: Aging is often accompanied by a decrease in muscle mass and strength. This can weaken the core muscles that support the spine, making it harder to maintain good posture.
    Bone Density Loss:  Bone density naturally declines with age, increasing the risk of fractures, especially in the spine. This can significantly impact posture and mobility.
""", image: "AgeFactor", videoURL: nil)

let ExcessWeightFactor: RiskFactor = RiskFactor(name: "Excess Weight", description: """
    Increased Strain: Excess weight puts additional strain on the spine and supporting muscles. This can lead to muscle fatigue, pain, and changes in posture.
    Shifting Center of Gravity: Carrying extra weight, especially in the abdominal area, shifts the body’s center of gravity forward. This forces the spine to compensate, leading to a swayback posture.
    Increased Risk of Conditions: Being overweight or obese increases the risk of developing conditions like osteoarthritis and degenerative disc disease, which can further compromise posture.
""", image: "ExcessWeightFactor", videoURL: nil)

let SedentaryLifestyleFactor: RiskFactor = RiskFactor(name: "Sedentary Lifestyle", description: """
    Inactivity: A sedentary lifestyle can lead to weak postural muscles, which are necessary for maintaining correct posture. This can result in a slouched or hunched posture.
    Muscle Imbalances: Sitting for long periods can cause muscle imbalances. For example, the hip flexors can become tight, pulling the lower spine forward. This can lead to a condition known as lordosis, or swayback.
    Increased Risk: A sedentary lifestyle increases the risk of developing serious health conditions like heart disease, diabetes, and osteoporosis, which can affect your posture and overall health.
""", image: "SedentaryLifestyle", videoURL: nil)

let PoorErgonomicsFactor: RiskFactor = RiskFactor(name: "Poor Ergonomics", description: """
    Incorrect Setup: An improper workstation setup can cause one to hunch or slouch to see the computer screen or reach the keyboard, leading to poor posture over time.
    Repetitive Strain: Repetitive tasks, like typing or using a mouse, can lead to strain in certain muscles, causing imbalances that affect posture.
    Lack of Movement: Staying in one position for extended periods can cause muscles to become stiff and fatigued, which can lead to poor posture.
""", image: "PoorErgonomics", videoURL: nil)

