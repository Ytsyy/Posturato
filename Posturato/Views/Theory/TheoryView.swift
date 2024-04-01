//
//  TheoryView.swift
//  Posturato
//
//  Created by Maxim on 18.03.2024.
//

import Foundation
import SwiftUI

struct TheoryView: View {
    @State private var showingSettings = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Theory Screen")
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
