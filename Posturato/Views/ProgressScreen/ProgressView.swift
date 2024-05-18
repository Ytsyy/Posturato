//
//  ProgressView.swift
//  Posturato
//
//  Created by Maxim on 01.04.2024.
//

import Foundation
import SwiftUI

struct ProgressView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Your Workout Program") 
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                   
                    ProgressWorkoutCell(workout: basicPostureWorkoutDay1)
                        .frame(height: 200)

                    
                    Image("Calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 280)
                }
                .padding()
            }
            .background(Color("LightBeige"))
            .navigationTitle("Progress")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}
