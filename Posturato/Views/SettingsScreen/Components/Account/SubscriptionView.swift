//
//  SubscriptionView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation
import SwiftUI

struct SubscriptionView: View {
    @ObservedObject var viewModel: SubscriptionViewModel
    
    var body: some View {
        VStack {
            Text("Subscription Page")
            Text("Status: \(viewModel.subscriptionStatus)")
            // Элементы интерфейса для управления подпиской
        }
        .navigationTitle("Subscription")
    }
}
