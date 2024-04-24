//
//  TheoryView.swift
//  Posturato
//
//  Created by Maxim on 18.03.2024.
//

import Foundation
import SwiftUI

struct TheoryView: View {
    @ObservedObject var viewModel = TheoryViewModel()
    @State private var showingSettings = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Exercises")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
                    Text("Posture disorder")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
                    Text("Health tips")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
                    Text("Posture Basics")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
                    Text("Risk Factors and Causes")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
                    Text("Health tips")
                        .font(.title)
                        .padding(.leading, 15)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
                            ForEach(viewModel.exercises, id: \.id) { exercise in
                                ExerciseCell(exercise: exercise)
                                    .frame(width: 120, height: 120)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                }
                .customNavigationBar(title: "Theory", onMenuTap: {
                    showingSettings = true
                })
                .fullScreenCover(isPresented: $showingSettings) {
                    SettingsView()
                }
            }
        }
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
                    .frame(height: 84)  // Указание высоты картинки
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
