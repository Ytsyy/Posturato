//
//  TrainingView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingView: View {
    @ObservedObject var viewModel = TrainingViewModel()
    @State private var showingSettings = false

    
    @State private var isTrainingActive = false
    @State private var showFinishWorkoutScreen = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
            
        }
        .customNavigationBar(title: "Training", onMenuTap: {
            showingSettings = true
        })
        .fullScreenCover(isPresented: $showingSettings) {
            SettingsView()
        }
    }

}
}

#Preview {
    ContentView()
}
