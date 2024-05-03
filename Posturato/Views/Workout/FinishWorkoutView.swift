//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import SwiftUI
import SwiftUI

struct FinishView: View {
    var router: TrainingRouter

    var body: some View {
        VStack {
            Text("Workout Finished!")
                .font(.largeTitle)
            
            Button(action: {
                router.backToRoot()
            }) {
                Text("Закончить тренировку")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Finish")
    }
}

