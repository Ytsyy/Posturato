//
//  ContentView.swift
//  Posturato
//
//  Created by Maxim on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    @State private var tabSelection = 1
    
    var body: some View {
        VStack {
            TabView {
                    Text("Favourites Screen")
                        .tabItem {
                            Image(systemName: "calendar.fill")
                            Text("Calendar")
                    }
                    Text("Friends Screen")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Friends")
                    }
                    Text("Home")
                        .tabItem {
                            Image("Home")
                            Text("Home")
                    }
                    Text("Nearby Screen")
                        .tabItem {
                            Image(systemName: "mappin.circle.fill")
                            Text("Nearby")
                        }
                    Text("Nearby Screen")
                        .tabItem {
                            Image("Profile")
                            Text("Profile")
                        }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
