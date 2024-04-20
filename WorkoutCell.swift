//
//  WorkoutCell.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import Foundation
import SwiftUI

struct WorkoutCell: View {
    var workout: Workout

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(workout.name)
                .font(.headline)
            Text(workout.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

