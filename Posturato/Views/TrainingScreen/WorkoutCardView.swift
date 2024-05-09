//
//  WorkoutCardView.swift
//  Posturato
//
//  Created by Maxim on 05.05.2024.
//

import Foundation
import SwiftUI


struct WorkoutCardView: View {
    var workout: Workout
    
    var body: some View {
        VStack {
            if let imageName = workout.image {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
            }
            Text(workout.name)
                .font(.headline)
        }
        .frame(width: 200, height: 250)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
