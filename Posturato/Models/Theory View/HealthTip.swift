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

final class HealthTipModel {
    static let healthTips: [HealthTip] = [
        stretchRegularly,
        walkDaily,
        balancedDiet,
        getEnoughSleep
    ]
}

let stretchRegularly = HealthTip(
    title: "Stretch Regularly",
    details: """
    Stretching improves flexibility and helps maintain a healthy range of motion in your joints. Regular stretching can prevent injuries and reduce muscle soreness after physical activities. According to a study published in the Journal of Sports Science & Medicine, consistent stretching routines can also improve athletic performance and decrease the risk of tendon injuries.

    """,
    image: "Sport",
    videoURL: nil
)

let walkDaily = HealthTip(
    title: "8000 steps",
    details: """
    Walking 8000 steps per day is a simple yet effective way to improve your overall health. Research published in JAMA Internal Medicine found that walking at least 8000 steps daily is associated with a significantly lower risk of all-cause mortality compared to those who walk fewer steps. Walking helps maintain a healthy weight, strengthens your heart, and improves your mood.

    Regular walking also promotes better blood circulation to bones and cartilage. This is crucial as blood delivers oxygen and nutrients necessary for maintaining healthy bone and cartilage tissue. Studies have shown that moderate physical activity, such as walking, can increase bone density and reduce the risk of osteoporosis and other bone-related diseases.

    To reach this goal, try incorporating walking into your daily routine by taking short breaks during work, opting for stairs instead of elevators, and enjoying evening walks. Using a pedometer or a fitness tracker can help you monitor your progress and stay motivated.
    """,
    image: "Walk",
    videoURL: nil
)

let balancedDiet = HealthTip(
    title: "Balanced Diet",
    details: """
    Eating a balanced diet is essential for maintaining optimal health. A balanced diet includes a variety of foods from all food groups, providing the necessary nutrients your body needs to function correctly. Research from the Harvard T.H. Chan School of Public Health emphasizes that a diet rich in fruits, vegetables, whole grains, and lean proteins can reduce the risk of chronic diseases such as heart disease, diabetes, and cancer.

    To maintain a balanced diet, aim to include a range of colorful fruits and vegetables in your meals, choose whole grains over refined grains, and incorporate sources of healthy fats such as nuts, seeds, and olive oil. Additionally, limiting the intake of processed foods, sugary drinks, and high-fat foods can contribute to better health outcomes.
    """,
    image: "BalanceDiet",
    videoURL: nil
)

let getEnoughSleep = HealthTip(
    title: "Get Enough Sleep",
    details: """
    Sleep is essential for recovery and overall well-being. The National Sleep Foundation recommends that adults aim for 7-9 hours of sleep per night. Adequate sleep is crucial for cognitive function, mood regulation, and physical health. Studies have shown that poor sleep quality is linked to a higher risk of chronic conditions such as obesity, diabetes, and cardiovascular disease.

    Creating a consistent sleep schedule, establishing a relaxing bedtime routine, and creating a comfortable sleep environment can help improve sleep quality. Avoiding caffeine and electronic devices before bedtime can also contribute to better sleep hygiene.
    """,
    image: "Sleep",
    videoURL: nil
)
