//
//  ContentView.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 2

    var body: some View {
        TabBar(tabSelection: $tabSelection)
    }
}
