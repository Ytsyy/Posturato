//
//  ContactSupportView.swift
//  Posturato
//
//  Created by Maxim on 07.04.2024.
//

import Foundation
import SwiftUI

struct ContactSupportView: View {
    @ObservedObject var viewModel: ContactSupportViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.info)
                .padding()
        }
        .navigationBarTitle("Contact Support", displayMode: .inline)
    }
}
