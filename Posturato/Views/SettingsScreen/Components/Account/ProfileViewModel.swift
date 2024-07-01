//
//  ProfileViewModel.swift
//  Posturato
//
//  Created by Maxim on 01.07.2024.
//

import Foundation
import FirebaseAuth

final class ProfileViewModel: ObservableObject {
    @Published var user: User?

    func loadUserData() {
        if let currentUser = Auth.auth().currentUser {
            user = User(email: currentUser.email ?? "No email")
        }
    }

    func logout() {
        do {
            try Auth.auth().signOut()
            UserManager.shared.isLoggedIn = false
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
