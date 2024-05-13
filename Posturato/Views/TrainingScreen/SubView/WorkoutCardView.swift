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
                    .frame(height: 100)
            }
            Text(workout.name)
                .font(.headline)
                .foregroundStyle(.black)
        }
        .frame(width: 150, height: 150)
        .background(Color("LightBeige"))
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding(.vertical, 5)
    }
}

