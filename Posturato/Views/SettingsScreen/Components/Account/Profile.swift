//
//  Profile.swift
//  Posturato
//
//  Created by Maxim on 14.05.2024.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel

    var body: some View {
        VStack {
            if let user = viewModel.user {
                Text("Welcome, \(user.email)")
                    .font(.system(size: 20))
                    .bold()
            } else {
                Text("No user information available")
                    .font(.system(size: 20))
                    .bold()
            }

            Spacer()
            
            Button(action: {
                viewModel.logout()
            }) {
                Text("Logout")
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .onAppear {
            viewModel.loadUserData()
        }
    }
}
