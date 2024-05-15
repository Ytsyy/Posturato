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
        VStack(alignment: .center) {
            if let imageName = workout.image {
                Image(imageName)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 5)) // Сначала обрезаем
                    .scaledToFit() // Затем масштабируем
                    .frame(width: 130, height: 100)
                    .padding(.top, 5)
            }
            Text(workout.name)
                .font(.headline)
                .foregroundStyle(.black)
                .padding(.bottom, 10)
        }
        .frame(width: 160, height: 160)
        .background(Color("LightBeige"))
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.7), radius: 8, x: 0, y: 3)
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
    }
}
