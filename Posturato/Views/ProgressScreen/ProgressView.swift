//
//  ProgressView.swift
//  Posturato
//
//  Created by Maxim on 01.04.2024.
//

import Foundation
import SwiftUI

import SwiftUI

struct ProgressView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                CalendarView()
                    .offset(y: 40)
            }
            .navigationTitle("Progress")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}
