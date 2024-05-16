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


let hipFlexorStretch = Exercise(
    id: UUID(),
    name: "Hip Flexor Stretch",
    details: "Start in a kneeling position with one knee on the ground and the other leg bent in front of you at a 90-degree angle. Lean forward slightly, stretching your hip flexors",
    image: "HipFlexorStretch",
    videoURL: nil,
    targetMuscleGroups: [.iliopsoas, .hipFlexors]
)

let chestOpenerStretch = Exercise(
    id: UUID(),
    name: "Chest Opener Stretch",
    details: "Stand tall with your feet hip-width apart. Clasp your hands behind your back and gently lift them up until you feel a stretch in your chest. ",
    image: "ChestOpenerStretch",
    videoURL: nil,
    targetMuscleGroups: [.pectoralisMajor, .pectoralisMinor]
)

let birdDog = Exercise(
    id: UUID(),
    name: "Bird Dog",
    details: "Begin on your hands and knees, aligning your palms under your shoulders и knees under your hips. Activate your core to achieve a neutral spine. Lift your right hand and extend it forward while simultaneously extending your left leg back, keeping both at shoulder и hip height respectively. Hold this pose for a second, then return to the starting position и repeat on the opposite side.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .abs, .glutes, .shoulders]
)

let childsPose = Exercise(
    id: UUID(),
    name: "Child's Pose",
    details: "Start on your hands и knees. Sit back onto your heels while stretching your arms forward on the mat.  This stretch helps to relax the back и shoulders.",
    image: "ChildPose",
    videoURL: nil,
    targetMuscleGroups: [.erectorSpinae, .upperBack]
)

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
    details: "Stand on one leg while pulling the other foot towards your glutes.",
    image: "",
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

let neckStretchSitting = Exercise(
    id: UUID(),
    name: "Neck Stretch Sitting",
    details: "Sit on an office chair with your back straight. Tilt your head towards one shoulder, using the opposite hand to assist. Repeat on the other side.",
    image: "NeckStretchSitting",
    videoURL: nil,
    targetMuscleGroups: [.neckFlexors, .neckExtensors, .neckRotators]
)


let seatedTorsoTwist = Exercise(
    id: UUID(),
    name: "Seated Torso Twist",
    details: "Sit on an office chair with your back straight. Twist to one side, using the opposite hand to assist. Repeat on the other side.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.obliques, .upperBack, .lowerBack]
)

let wristStretch = Exercise(
    id: UUID(),
    name: "Wrist Stretch",
    details: "Extend one arm forward with the palm facing down. Gently bend the wrist down and then up using the opposite hand. Repeat with the other arm.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: []
)

let seatedLegExtension = Exercise(
    id: UUID(),
    name: "Seated Leg Extension",
    details: "Sit on an office chair and straighten one leg in front of you, holding for a few seconds. Then switch legs.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.quadriceps, .hamstrings]
)
let seatedForwardBend = Exercise(
    id: UUID(),
    name: "Seated Forward Bend",
    details: "Sit on an office chair with your feet flat on the ground. Lean forward, reaching your hands towards your feet while keeping your back straight. Hold for a few seconds and return to the starting position.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.lowerBack, .erectorSpinae, .hamstrings]
)

let catCowStretchSitting = Exercise(
    id: UUID(),
    name: "Cat-Cow Stretch Sitting",
    details: "Sit on an office chair with your feet flat on the ground. Alternate between arching your back (cow pose) and rounding your spine (cat pose), synchronizing the movement with your breath.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.lowerBack, .erectorSpinae, .upperBack]
)

let standingBackExtension = Exercise(
    id: UUID(),
    name: "Standing Back Extension",
    details: "Stand with your feet shoulder-width apart. Place your hands on your lower back for support and gently arch backwards. Hold for a few seconds and return to the starting position.",
    image: "standing_back_extension",
    videoURL: nil,
    targetMuscleGroups: [.lowerBack, .erectorSpinae]
)

let seatedSpinalTwist = Exercise(
    id: UUID(),
    name: "Seated Spinal Twist",
    details: "Sit on an office chair with your back straight. Twist your torso to one side, using the opposite hand to assist. Hold for a few seconds and repeat on the other side.",
    image: "seated_spinal_twist",
    videoURL: nil,
    targetMuscleGroups: [.obliques, .upperBack, .lowerBack]
)

let recliningBoundAngle = Exercise(
    id: UUID(),
    name: "Reclining Bound Angle Pose",
    details: "Lie on your back with the soles of your feet together and knees bent out to the sides. Place your arms at your sides with palms facing up. Hold for a few minutes while breathing deeply.",
    image: "reclining_bound_angle_pose",
    videoURL: nil,
    targetMuscleGroups: [.hipAdductors, .hipFlexors, .lowerBack]
)

let supineSpinalTwist = Exercise(
    id: UUID(),
    name: "Supine Spinal Twist",
    details: "Lie on your back with your arms extended out to the sides. Bend one knee and cross it over your body towards the opposite side. Hold for a few seconds and repeat on the other side.",
    image: "supine_spinal_twist",
    videoURL: nil,
    targetMuscleGroups: [.obliques, .lowerBack, .glutes]
)

let legsUpTheWall = Exercise(
    id: UUID(),
    name: "Legs-Up-the-Wall Pose",
    details: "Sit close to a wall with your knees bent. Lie back and extend your legs up along the wall, keeping your back relaxed on the ground. Hold for a few minutes while breathing deeply.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.hamstrings, .lowerBack, .calves]
)

let seatedForwardBendYoga = Exercise(
    id: UUID(),
    name: "Seated Forward Bend",
    details: "Sit on the floor with your legs extended in front of you. Reach forward towards your feet, keeping your back straight. Hold for a few seconds while breathing deeply.",
    image: "",
    videoURL: nil,
    targetMuscleGroups: [.hamstrings, .erectorSpinae, .calves]
)

