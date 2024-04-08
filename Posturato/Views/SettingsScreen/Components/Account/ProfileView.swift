//
//  ProfileView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Text("Profile Page")
            Text("Username: \(viewModel.username)")
            // Здесь может быть больше элементов интерфейса для настройки профиля
        }
        .navigationTitle("Profile")
    }
}



