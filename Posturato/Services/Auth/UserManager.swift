//
//  UserManager.swift
//  Posturato
//
//  Created by Maxim on 29.06.2024.
//

import Foundation

class UserManager {
    static let shared = UserManager()

    private let userDefaults = UserDefaults.standard
    private let userKey = "isLoggedIn"

    var isLoggedIn: Bool {
        get {
            return userDefaults.bool(forKey: userKey)
        }
        set {
            userDefaults.set(newValue, forKey: userKey)
        }
    }
}
