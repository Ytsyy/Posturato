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
        ZStack {
            Color("LightBeige")
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Congratulations!")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Button(action: {
                    navigationPath.removeLast(navigationPath.count)
                }) {
                    Text("Finish")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
        .toolbar(.hidden, for: .tabBar,.navigationBar)
    }
}
