//
//  Profile.swift
//  Posturato
//
//  Created by Maxim on 14.05.2024.
//

import Foundation
import SwiftUI
import FirebaseAuth

final class ProfileViewModel: ObservableObject {}

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @ObservedObject var userManager = UserManager.shared

    var body: some View {
        VStack {
            Text("Section under development")
                .font(.system(size: 20))
                .bold()

            Spacer()
            
            Button(action: {
                logout()
            }) {
                Text("Logout")
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
            userManager.isLoggedIn = false
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}


