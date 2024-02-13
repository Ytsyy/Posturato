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
            Toggle("Toggle Switch", isOn: $vm.isTurndedOn)
                .padding()
            
            HStack{
                Button("Increment") {
                    vm.increment()
                }
                Text("\(vm.counter)")
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
            }
            List(vm.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item") {
                vm.addItem()
            }
            .padding()
            
            ////
            Button("Remove item") {
                vm.removeItem()
            }
            
            TabView(selection: $tabSelection) {
                Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
                Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
