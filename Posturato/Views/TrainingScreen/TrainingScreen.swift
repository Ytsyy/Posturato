//
//  HomeView.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TrainingScreen: View {
    @ObservedObject var viewModel = TrainingViewModel()
    @State private var showingSettings = false
    
    
    
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
