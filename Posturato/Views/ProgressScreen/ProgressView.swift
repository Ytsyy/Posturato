//
//  ProgressView.swift
//  Posturato
//
//  Created by Maxim on 01.04.2024.
//

import Foundation
import SwiftUI

struct ProgressView: View {
    @State private var showingSettings = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                CalendarView()
                    .offset(y: 40) 
                
                
            }
            .customNavigationBar(title: "Progress", onMenuTap: {
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
