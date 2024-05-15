//
//  PostureDisorder.swift
//  Posturato
//
//  Created by Maxim on 13.05.2024.
//

import Foundation

struct PostureDisorder: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
    let videoURL: URL?
}

class PostureDisorderModel {
    static let postureDisorders: [PostureDisorder] = [
        kyphosis,
        scoliosis,
        lordosis,
        forwardHeadPosture
    ]
}

let kyphosis = PostureDisorder(
    name: "Kyphosis",
    description: "Thoracic kyphosis is a condition characterized by an excessive outward curvature of the thoracic spine, resulting in a rounded or hunched back appearance. This abnormal curvature can lead to postural changes, discomfort, and, in severe cases, impairment of lung function or neurological symptoms",
    image: "Kyphosis",
    videoURL: nil
)

let scoliosis = PostureDisorder(
    name: "Scoliosis",
    description: "Scoliosis is a medical condition characterized by an abnormal lateral curvature of the spine. The spine typically curves sideways in an S or C shape, deviating from the midline. The condition can be classified as congenital, idiopathic, or neuromuscular, depending on its cause. Symptoms may include uneven shoulders, asymmetrical waistline, and in severe cases, respiratory issues",
    image: "Skoliosis",
    videoURL: nil
)

let lordosis = PostureDisorder(
    name: "Lordosis",
    description: "Lumbar hyperlordosis is a condition where there is an excessive inward curvature of the lumbar spine, causing a pronounced arch in the lower back. This exaggerated curvature can lead to back pain, discomfort, and muscular imbalances. It is often associated with poor posture, muscle weakness, or tightness in the hip flexors and lower back muscles.",
    image: "Lordosis",
    videoURL: nil
)

let forwardHeadPosture = PostureDisorder(
    name: "Forward Head Posture",
    description: "Forward Head Posture (FHP) is a postural condition where the head is positioned forward relative to the body's center of gravity. This posture often results in the neck jutting out and the shoulders rounding forward. FHP can lead to neck pain, headaches, and upper back discomfort due to the increased strain on the cervical spine and surrounding muscles. It is often linked to prolonged use of electronic devices and poor ergonomic practices.",
    image: "forward_head",
    videoURL: nil
)
