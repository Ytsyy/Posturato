//
//  HomeModel.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import Foundation

struct Training: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let imageName: String
    let type: TrainingType
}


enum TrainingType {
    case office, plank
}
