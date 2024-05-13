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

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    SectionView(title: "Exercises", items: viewModel.exercises) { exercise in
                        (title: exercise.name, description: exercise.details, image: exercise.image, videoURL: exercise.videoURL)
                    }

                    SectionView(title: "Posture disorder", items: viewModel.postureDisorders) { disorder in
                        (title: disorder.name, description: disorder.description, image: disorder.image, videoURL: disorder.videoURL)
                    }

                    SectionView(title: "Health tips", items: viewModel.healthTips) { tip in
                        (title: tip.title, description: tip.details, image: tip.image, videoURL: tip.videoURL)
                    }

                    SectionView(title: "Posture Basics", items: viewModel.postureBasics) { basic in
                        (title: basic.title, description: basic.description, image: basic.image, videoURL: basic.videoURL)
                    }

                    SectionView(title: "Risk Factors and Causes", items: viewModel.riskFactors) { factor in
                        (title: factor.name, description: factor.description, image: factor.image, videoURL: factor.videoURL)
                    }
                }

            }
            .background(Color("LightBeige"))
            .navigationTitle("Theory")
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


