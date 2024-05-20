//
//  RestCell.swift
//  Posturato
//
//  Created by Maxim on 18.05.2024.
//

import Foundation
import SwiftUI

struct RestCell: View {
    let nextExercise: Exercise?

    var body: some View {
        VStack {
            if let nextExercise = nextExercise {
                Text("Next Exercise:")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                if let imageName = nextExercise.image {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                }

                Text(nextExercise.name)
                    .font(.title2)
            } else {
                Text("This is the last exercise!")
                    .font(.title2)
                    .padding(.bottom, 5)
            }
        }
        .padding()
    }
}
