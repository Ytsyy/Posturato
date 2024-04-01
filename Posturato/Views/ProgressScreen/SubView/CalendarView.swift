//
//  CalendarView.swift
//  Posturato
//
//  Created by Maxim on 01.04.2024.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        Image(systemName: "calendar")
            .resizable()
            .frame(width: 250, height: 200)
            .foregroundColor(.orange)
        Text("Mock of calendar")
        
    }
}

#Preview {
    CalendarView()
}
