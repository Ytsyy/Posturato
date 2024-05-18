//
//  WorkoutExerciseView.swift
//  Posturato
//
//  Created by Maxim on 30.04.2024.
//

import Foundation
import SwiftUI
import Combine

struct ExerciseView: View {
    var exercise: Exercise
    @ObservedObject var viewModel: WorkoutViewModel
    @State private var detailText: String? = nil

    var body: some View {
        VStack {
            Spacer()
            
            Text(exercise.name)
                .font(.largeTitle)
                .padding()
            
            if let imageUrl = exercise.image {
                Image(imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.horizontal)
            }
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.2)) {
                    if detailText == nil {
                        detailText = exercise.details
                    } else {
                        detailText = nil
                    }
                }
            }) {
                Text("Details")
                    .font(.body)
                    .foregroundColor(.blue)
                    .underline()
            }

            if let details = detailText {
                ScrollView {
                    Text(details)
                        .padding()
                        .transition(.opacity)
                }
                .frame(maxHeight: 200) 
            }
            
            Text("\(viewModel.remainingTime) сек")
                .font(.largeTitle)
                .padding(.bottom)
            
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
        .navigationTitle("Workout Exercise")
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}
