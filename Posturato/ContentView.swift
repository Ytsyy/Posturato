//
//  ContentView.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    @State private var tabSelection = 1
    
    var body: some View {
        VStack {
            TabView {
                
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
