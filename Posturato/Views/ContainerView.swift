//
//  ContainerView.swift
//  Posturato
//
//  Created by Maxim on 12.05.2024.
//

import SwiftUI

struct ContainerView: View {
    @State private var isSplashScreenViewPresented = true
    
    var body: some View {
        if !isSplashScreenViewPresented {
            ContentView()
        } else {
            SplashScreen(isPresented: $isSplashScreenViewPresented)
        }
    }
}
