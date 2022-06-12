//
//  PetListViewModel.swift
//  Pets
//
//  Created by Metin Atalay on 9.06.2022.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service : NetworkService
    @Published var componets: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel =   try await  service.load(Constants.ScreenResources.petListing)
            self.componets =  try  screenModel.buildComponets()
        } catch {
            print(error.localizedDescription)
        }
    }
}
