//
//  WorkoutCardView.swift
//  Posturato
//
//  Created by Maxim on 05.05.2024.
//

import Foundation
import SwiftUI

struct WorkoutCardView: View {
    let workout: Workout
    
    var body: some View {
        VStack {
            Image(workout.image ?? "defaultTraining")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(workout.name)
                .font(.headline)
            
            Text("\(workout.durations.reduce(0, +)/60) Minutes")
                .font(.subheadline)
        }
        .frame(width: 150)
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
    }
}
