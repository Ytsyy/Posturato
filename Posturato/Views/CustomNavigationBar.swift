//
//  CustomNavigationView.swift
//  Posturato
//
//  Created by Maxim on 05.03.2024.
//
import SwiftUI

struct CustomNavigationBar: ViewModifier {
    var title: String
    var onMenuTap: () -> Void
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarItems(leading: Button(action: onMenuTap) {
                Image(systemName: "line.horizontal.3")
                    .foregroundColor(.blue)
            })
    }
}

extension View {
    func customNavigationBar(title: String, onMenuTap: @escaping () -> Void) -> some View {
        self.modifier(CustomNavigationBar(title: title, onMenuTap: onMenuTap))
    }
}
