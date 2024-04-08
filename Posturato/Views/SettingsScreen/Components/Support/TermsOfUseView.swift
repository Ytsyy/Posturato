//
//  TermsOfUseView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

struct TermsOfUseView: View {
    @ObservedObject var viewModel: TermsOfUseViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.text)
                .padding()
        }
        .navigationBarTitle("Terms of Use", displayMode: .inline)
    }
}
