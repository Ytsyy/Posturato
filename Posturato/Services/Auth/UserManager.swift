//
//  UserManager.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import Foundation

class UserManager: ObservableObject {
    static let shared = UserManager()

    private let userDefaults = UserDefaults.standard
    private let userKey = "isLoggedIn"

    @Published var isLoggedIn: Bool {
        didSet {
            userDefaults.set(isLoggedIn, forKey: userKey)
        }
    }

    private init() {
        self.isLoggedIn = userDefaults.bool(forKey: userKey)
    }
}
