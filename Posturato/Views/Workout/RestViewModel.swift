//
//  RestViewModel.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import SwiftUI
import Combine

class RestViewModel: ObservableObject {
    @Published var restTimeRemaining: Int
    var timer: AnyCancellable?
    
    init(restTime: Int) {
        self.restTimeRemaining = restTime
    }
    
    func startRestTimer(completion: @escaping () -> Void) {
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect().sink { [weak self] _ in
            guard let self = self else { return }
            if self.restTimeRemaining > 0 {
                self.restTimeRemaining -= 1
            } else {
                self.timer?.cancel()
                completion()
            }
        }
    }
    
    func addTime(seconds: Int) {
        restTimeRemaining += seconds
    }
}
