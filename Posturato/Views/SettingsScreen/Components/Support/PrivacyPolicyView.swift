//
//  PrivacyPolicyView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

struct PrivacyPolicyView: View {
    @ObservedObject var viewModel: PrivacyPolicyViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.text)
                .padding()
        }
        .navigationBarTitle("Privacy Policy", displayMode: .inline)
    }
}
