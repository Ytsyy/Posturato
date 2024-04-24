//
//  WorkoutSessionViewModel.swift
//  Posturato
//
//  Created by Maxim on 05.04.2024.
//

import Foundation
import SwiftUI

import SwiftUI
import Combine

class ExerciseViewModel: ObservableObject {
    @Published var secondsRemaining: Int
    var timer: AnyCancellable?
    
    init(duration: Int) {
        self.secondsRemaining = duration
    }
    
    func startTimer(completion: @escaping () -> Void) {
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect().sink { [weak self] _ in
            guard let self = self else { return }
            if self.secondsRemaining > 0 {
                self.secondsRemaining -= 1
            } else {
                self.timer?.cancel()
                completion()
            }
        }
    }
}
