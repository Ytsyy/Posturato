//
//  NotificationsView.swift
//  Posturato
//
//  Created by Maxim on 08.04.2024.
//

import Foundation
import SwiftUI

struct NotificationsView: View {
    @ObservedObject var viewModel: NotificationsViewModel
    
    var body: some View {
        VStack {
            Text("Notifications Page")
            Toggle(isOn: $viewModel.notificationsEnabled) {
                Text("Enable Notifications")
            }
            // Дополнительные настройки уведомлений
        }
        .navigationTitle("Notifications")
    }
}
