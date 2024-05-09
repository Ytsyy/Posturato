//
//  FinishWorkoutView.swift
//  Posturato
//
//  Created by Maxim on 22.03.2024.
//

import SwiftUI
import SwiftUI

struct FinishView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    @Binding var navigationPath: NavigationPath

    var body: some View {
        VStack {
            Spacer()
            Text("Congratulations!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Button(action: {
                navigationPath.removeLast(navigationPath.count)
            }) {
                Text("Back to Training")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}
