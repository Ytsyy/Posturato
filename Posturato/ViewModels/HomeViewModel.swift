//
//  HomeViewModel.swift
//  Posturato
//
//  Created by Maxim on 24.02.2024.
//

import Foundation

import Foundation

class HomeViewModel: ObservableObject {
    @Published var counter = 0

    func incrementCounter() {
        counter += 1
    }
}
