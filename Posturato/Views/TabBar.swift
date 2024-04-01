//
//  TabBar.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI

struct TabBar: View {
    @Binding var tabSelection: Int // Используем Binding для синхронизации состояния
    
    var body: some View {
        TabView(selection: $tabSelection) { 
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "calendar")
                }
                .tag(1)
            
            TrainingView()
                .tabItem {
                    Label("Training", image: "Home") 
                }
                .tag(2)

            TheoryView()
                .tabItem {
                    Label("Theory", systemImage: "book")
                }
                .tag(3)
        }
    }
}
