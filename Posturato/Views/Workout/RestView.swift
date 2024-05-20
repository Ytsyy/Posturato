//
//  RestView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import SwiftUI

struct RestView: View {
    @ObservedObject var viewModel: WorkoutViewModel

    var body: some View {
        VStack {
            Spacer()
            
            Text("Rest")
                .font(.largeTitle)
                .padding()
            
            Text("\(viewModel.remainingTime) sec")
                .font(.largeTitle)
                .padding(.bottom)

            RestCell(nextExercise: viewModel.currentExercise)

            Spacer()
            
            HStack(spacing: 30) {
                Button(action: {
                    viewModel.addTime()
                }) {
                    Text("+10 sec")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    viewModel.skip()
                }) {
                    Text("Skip")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.bottom, 120)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("LightBeige"))
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Rest View")
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}
