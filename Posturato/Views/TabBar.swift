//
//  TabBar.swift
//  Posturato
//
//  Created by Maxim on 27.02.2024.
//

import SwiftUI



struct MainTabView: View {
    
    var body: some View {
        TabView {
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "calendar")
                }
            
            HomeScreen()
                .tabItem {
                    Label("Home", image: "Home")
                }

            TheoryView()
                .tabItem {
                    Label("Theory", systemImage: "book")
                }
        }
    }
}

struct ProgressView: View {
    var body: some View {
        Text("Progress Screen")
    }
}

struct TheoryView: View {
    var body: some View {
        Text("Theory Screen")
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

