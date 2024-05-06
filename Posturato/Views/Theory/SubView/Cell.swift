//
//  ExerciseCell.swift
//  Posturato
//
//  Created by Maxim on 06.05.2024.
//

import Foundation
import SwiftUI


struct GenericCell: View {
    var title: String
    var imageName: String?

    var body: some View {
        VStack {
            if let imageName = imageName {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
            }
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
                .padding([.bottom, .horizontal], 8)
        }
        .frame(width: 150, height: 150)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 0, y: 2)
    }
}


struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        VStack {
            if let imageName = exercise.image {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 84) 
                    .cornerRadius(10)
            }
            Text(exercise.name)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 4)
                .padding([.bottom, .horizontal], 8)
        }
        .frame(width: 120, height: 120)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 0, y: 2)
    }
}
