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

    var body: some Scene {
        WindowGroup {
            ContainerView()
                .background(Color("LightBeige")).ignoresSafeArea(.all)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
