//
//  SplashScreen.swift
//  Posturato
//
//  Created by Maxim on 12.05.2024.
//

import Foundation
import SwiftUI

struct SplashScreen: View {
    @Binding var isPresented: Bool
    
    @State private var scale = CGSize(width: 0.1, height: 0.1)
    @State private var systemImageOpacity = 0.0
    @State private var imageOpacity = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        ZStack {
            Color("BeigeMain").ignoresSafeArea()
            
            ZStack {
                Image("AppLogo")
                    .font(.system(size: 105))
                    .foregroundStyle(.white)
                    .opacity(systemImageOpacity)
            }
            .scaleEffect(scale)
            
        }
        .opacity(opacity)
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)) {
                scale = CGSize(width: 0.25, height: 0.23)
                systemImageOpacity = 1
        }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeIn(duration: 0.35)) {
                    scale = CGSize(width: 0, height: 0)
                    opacity = 0
                }
            })
                DispatchQueue.main.asyncAfter(deadline: .now()+2.5, execute:  {
                    withAnimation(.easeIn(duration:0.2)){
                        isPresented.toggle()
                    }
            })
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(isPresented: .constant(true))
    }
}
