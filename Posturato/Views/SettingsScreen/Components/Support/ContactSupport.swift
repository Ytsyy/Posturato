//
//  ContactSupport.swift
//  Posturato
//
//  Created by Maxim on 14.05.2024.
//

import Foundation
import SwiftUI

class ContactSupportViewModel: ObservableObject {}

struct ContactSupportView: View {
    @ObservedObject var viewModel: ContactSupportViewModel
    var body: some View {
        Image("WorkingOn")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        Text("Section under development")
            .font(.system(size: 20))
            .bold()
    }
}
