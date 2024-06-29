//
//  PosturatoApp.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import SwiftUI
import Firebase

@main
struct PosturatoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    @State private var isLoggedIn = UserManager.shared.isLoggedIn

    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                ContentView()
                    .background(Color("LightBeige")).ignoresSafeArea(.all)
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
                    .background(Color("LightBeige")).ignoresSafeArea(.all)
            }
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        

        Auth.auth().addStateDidChangeListener { auth, user in
            if let user = user {
                print("User is signed in with uid: \(user.uid)")
            } else {
                print("User is signed out.")
            }
        }
        
        return true
    }
}

