//
//  TrainingSession.swift
//  Posturato
//
//  Created by Maxim on 16.03.2024.
//

import Foundation

struct TrainingSession: Identifiable, Codable {
    var id: UUID = UUID()
    var exercises: [Exercise]
    var date: Date
}
