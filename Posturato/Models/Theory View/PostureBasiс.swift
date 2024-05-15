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
        standingPosture,
        sittingPosture,
        sleepingPosture,
        liftingPosture
    ]
}


let standingPosture = PostureBasic(
    title: "Standing Posture",
    description: """
    Maintaining a neutral spine while standing is essential for reducing the risk of back pain and injury. A neutral spine position involves keeping the natural curves of the spine in alignment, without excessive arching or rounding. According to a study published in the Journal of Physical Therapy Science, proper standing posture can also improve breathing efficiency and reduce fatigue.

    To achieve a neutral spine, stand with your feet shoulder-width apart, distribute your weight evenly on both feet, and keep your shoulders back and relaxed. Engage your core muscles to support your lower back and avoid locking your knees. Regularly adjusting your posture and taking breaks from prolonged standing can help maintain spinal health.
    """,
    image: "standing_posture",
    videoURL: nil
)

let sittingPosture = PostureBasic(
    title: "Sitting Posture",
    description: """
    Sitting with your back straight and maintaining good posture is crucial for preventing back and neck pain. Proper sitting posture helps distribute body weight evenly and reduces strain on the spine. Research from the National Institute of Occupational Safety and Health (NIOSH) indicates that poor sitting posture can lead to musculoskeletal disorders over time.

    To sit correctly, ensure that your feet are flat on the floor and your knees are at a 90-degree angle. Use a chair with good lumbar support and sit back in the chair so that your back is fully supported. Keep your computer screen at eye level to avoid straining your neck. Taking regular breaks to stand and stretch can also help alleviate the negative effects of prolonged sitting.
    """,
    image: "SittingAtComputer",
    videoURL: nil
)

let sleepingPosture = PostureBasic(
    title: "Sleeping Posture",
    description: """
    Sleeping on your side or back is recommended to maintain proper spinal alignment and reduce the risk of developing back pain. According to the American Chiropractic Association, these positions help keep the spine in a neutral position and minimize unnecessary pressure on the back.

    When sleeping on your side, place a pillow between your knees to keep your hips aligned and reduce strain on your lower back. If you prefer sleeping on your back, use a pillow under your knees to support the natural curve of your lower back. Avoid sleeping on your stomach, as it can cause neck and back strain.
    """,
    image: "sleeping_posture",
    videoURL: nil
)

let liftingPosture = PostureBasic(
    title: "Lifting Posture",
    description: """
    Lifting with your knees, not your back, is essential to prevent injury and maintain spinal health. Improper lifting techniques can lead to strains and sprains in the lower back. The Mayo Clinic advises bending your knees and keeping your back straight when lifting objects to distribute the load more evenly and reduce the risk of injury.

    To lift correctly, stand close to the object with your feet shoulder-width apart, bend at your knees and hips, and keep your back straight. Use your legs to lift the object, keeping it close to your body. Avoid twisting your torso while lifting, and if the object is too heavy, ask for help or use lifting equipment.
    """,
    image: "LiftingPosture",
    videoURL: nil
)


