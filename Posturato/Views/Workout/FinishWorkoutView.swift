//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import SwiftUI
import SwiftUI

struct FinishView: View {
    var body: some View {
        VStack {
            Text("Workout Finished!")
                .font(.largeTitle)
            
            Button(action: {
                // Здесь можно добавить логику для перехода на корневой экран
            }) {
                Text("Go Back")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Finish")
    }
}
