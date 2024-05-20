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
                .foregroundColor(.black) 
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .padding(.top, 4)
                .padding([.bottom, .horizontal], 8)
        }
        .frame(width: 150, height: 150)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 0, y: 2)
    }
}
