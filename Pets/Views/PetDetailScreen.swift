//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Metin Atalay on 11.06.2022.
//

import SwiftUI

struct PetDetailScreen: View {
    
    let petId: Int
    @StateObject private var vm = PetDetailViewModel(service: Webservice())
    
    init(petId: Int) {
        self.petId = petId
    }
    
    var body: some View {
        NavigationView {
            ScrollView( showsIndicators: false) {
                ForEach(vm.componets, id: \.id) { component in
                    component.render()
                }
                .navigationTitle("Pet Detail")
            }
            .task {
                await vm.load(petId: self.petId)
            }
        }
    }
}

struct PetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailScreen(petId: 2)
    }
}
