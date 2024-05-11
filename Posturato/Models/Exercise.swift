//
//  Exercise.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation


struct Exercise: Identifiable, Equatable, Hashable {
    let id: UUID
    let name: String
    let details: String
    let image: String?
    let videoURL: URL?
    let targetMuscleGroups: [MuscleGroup]
}

enum MuscleGroup: String, CaseIterable {
    // Neck
    case neckFlexors = "Neck Flexors"
    case neckExtensors = "Neck Extensors"
    case neckRotators = "Neck Rotators"
    
    // Shoulders
    case shoulders = "Shoulders"
    case rotatorCuff = "Rotator Cuff"
    
    // Upper Back
    case upperBack = "Upper Back"
    case rhomboids = "Rhomboids"
    case trapeziusUpper = "Upper Trapezius"
    case trapeziusMiddle = "Middle Trapezius"
    case trapeziusLower = "Lower Trapezius"
    
    // Chest
    case chest = "Chest"
    case pectoralisMajor = "Pectoralis Major"
    case pectoralisMinor = "Pectoralis Minor"
    
    // Lower Back
    case lowerBack = "Lower Back"
    case erectorSpinae = "Erector Spinae"
    case quadratusLumborum = "Quadratus Lumborum"
    
    // Abs
    case abs = "Abs"
    case rectusAbdominis = "Rectus Abdominis"
    case obliques = "Obliques"
    case transverseAbdominis = "Transverse Abdominis"
    
    // Pelvis and Hips
    case iliopsoas = "Iliopsoas"
    case glutes = "Glutes"
    case piriformis = "Piriformis"
    case hipAbductors = "Hip Abductors"
    case hipAdductors = "Hip Adductors"
    case hipFlexors = "Hip Flexors"
    case hamstrings = "Hamstrings"
    case thighs = "Thighs"
    case quadriceps = "Quadriceps"
    
    // Legs
    case calves = "Calves"
    case soleus = "Soleus"
    case gastrocnemius = "Gastrocnemius"
}




// Упражнения для утренней тренировки
let catStretch = Exercise(
    id: UUID(),
    name: "Cat Stretch",
    details: "Start on your hands and knees with your wrists directly under your shoulders and knees directly under your hips. Push your back up towards the ceiling, tucking your chin to your chest. Hold for a few seconds before returning to the neutral position.",
    image: "cat_stretch",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .upperBack, .lowerBack]
)

let hipFlexorStretch = Exercise(
    id: UUID(),
    name: "Hip Flexor Stretch",
    details: "Start in a kneeling position with one knee on the ground and the other leg bent in front of you at a 90-degree angle. Lean forward slightly, stretching your hip flexors. Hold for 20-30 seconds, then switch sides.",
    image: "hip_flexor_stretch",
    videoURL: nil,
    targetMuscleGroups: [.iliopsoas, .hipFlexors]
)

let chestOpenerStretch = Exercise(
    id: UUID(),
    name: "Chest Opener Stretch",
    details: "Stand tall with your feet hip-width apart. Clasp your hands behind your back and gently lift them up until you feel a stretch in your chest. Hold for 20-30 seconds, then release.",
    image: "chest_opener",
    videoURL: nil,
    targetMuscleGroups: [.pectoralisMajor, .pectoralisMinor]
)

let birdDog = Exercise(
    id: UUID(),
    name: "Bird Dog",
    details: "Begin on your hands and knees, aligning your palms under your shoulders и knees under your hips. Activate your core to achieve a neutral spine. Lift your right hand and extend it forward while simultaneously extending your left leg back, keeping both at shoulder и hip height respectively. Hold this pose for a second, then return to the starting position и repeat on the opposite side.",
    image: "bird_dog",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .abs, .glutes, .shoulders]
)

let childsPose = Exercise(
    id: UUID(),
    name: "Child's Pose",
    details: "Start on your hands и knees. Sit back onto your heels while stretching your arms forward on the mat. Let your chest fall towards the mat и hold for 20-30 seconds. This stretch helps to relax the back и shoulders.",
    image: "child_pose",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .upperBack]
)

// Упражнения для базовой тренировки для улучшения осанки
let catCow = Exercise(
    id: UUID(),
    name: "Cat-Cow",
    details: "The cat-cow stretch is performed on your hands and knees, alternating between arching your back up like a cat and then letting your belly drop towards the floor like a cow. This stretch helps to improve flexibility and mobility in the spine.",
    image: "CatCow",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .quadratusLumborum, .upperBack, .neckExtensors]
)

let plank = Exercise(
    id: UUID(),
    name: "Plank",
    details: "The plank is a core strength exercise that involves maintaining a position similar to a push-up for the maximum possible time. It engages multiple muscle groups including the abs, back, and shoulders.",
    image: "Plank",
    videoURL: nil,
    targetMuscleGroups: [.rectusAbdominis, .transverseAbdominis, .obliques, .erectorSpinae, .shoulders]
)

let chestStretch = Exercise(
    id: UUID(),
    name: "Chest Stretch",
    details: "This stretch is aimed at stretching and relaxing the muscles of the chest. Stand tall with your feet hip-width apart. Clasp your hands behind your back and gently lift them up until you feel a stretch in your chest. Hold for 20-30 seconds, then release.",
    image: "ChestStretch",
    videoURL: nil,
    targetMuscleGroups: [.pectoralisMajor, .pectoralisMinor]
)

let wallAngel = Exercise(
    id: UUID(),
    name: "Wall Angel",
    details: "The wall angel exercise is performed by standing with your back against a wall and raising your arms overhead to form a 'W' shape with your arms and body. This exercise targets the muscles in your shoulders and upper back while also helping to improve posture.",
    image: "WallAngel",
    videoURL: nil,
    targetMuscleGroups: [.rhomboids, .trapeziusMiddle, .trapeziusLower, .rotatorCuff, .shoulders]
)

let hamstringStretch = Exercise(
    id: UUID(),
    name: "Hamstring Stretch",
    details: "Sit on the floor with one leg extended and the other bent with the sole of the foot against the inner thigh of the extended leg. Reach forward towards the toes of the extended leg, feeling a stretch in the hamstring.",
    image: "HamstringStretch",
    videoURL: nil,
    targetMuscleGroups: [.hamstrings, .glutes]
)

let quadStretch = Exercise(
    id: UUID(),
    name: "Quad Stretch",
    details: "Stand on one leg while pulling the other foot towards your glutes. Hold the stretch for 20-30 seconds while keeping the supporting knee slightly bent.",
    image: "QuadStretch",
    videoURL: nil,
    targetMuscleGroups: [.thighs]
)

let calfStretch = Exercise(
    id: UUID(),
    name: "Calf Stretch",
    details: "Stand facing a wall with one foot in front of the other. Bend the front knee while keeping the back leg straight, pushing the heel of the back foot into the ground to stretch the calf.",
    image: "CalfStretch",
    videoURL: nil,
    targetMuscleGroups: [.thighs, .calves]
)
