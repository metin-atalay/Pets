//
//  ContentView.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = PetListViewModel(service: Webservice())
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(vm.componets, id: \.id) { component in
                    component.render()
                }
                .navigationTitle("Pets")
            }
            .listStyle(.plain)
            .task {
                await vm.load()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
