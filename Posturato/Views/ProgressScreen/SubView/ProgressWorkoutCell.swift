//
//  WorkoutCell.swift
//  Posturato
//
//  Created by Maxim on 14.05.2024.
//

import Foundation
import SwiftUI

struct ProgressWorkoutCell: View {
    let workout: Workout
    
    var body: some View {
        HStack(spacing: 10) {
            if let imageName = workout.image {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100) // Устанавливаем квадратную форму
                    .cornerRadius(10)
            } else {
                Color.gray
                    .frame(width: 100, height: 100) // Устанавливаем квадратную форму
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(workout.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(workout.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2) // Ограничение на две строки
                
                Text("Duration: \(totalDuration(seconds: workout.durations)) seconds")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    func totalDuration(seconds: [Int]) -> Int {
        return seconds.reduce(0, +)
    }
}
